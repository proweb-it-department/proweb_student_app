const https = require("https");
const path = require("path");
const { mkdir, writeFile } = require("fs/promises");

const API_URL = "https://langpro.proweb.uz/api/v1/langpro/interfaces/JM5ogCkxD785/";
const OUTPUT_DIR = path.join(__dirname, "assets", "translations");

const TIMEOUT_MS = 15000;
const MAX_REDIRECTS = 5;
const CONCURRENCY = 5;

// ANSI colors
const C = {
  reset: "\x1b[0m",
  bold: "\x1b[1m",
  blue: "\x1b[34m",
  green: "\x1b[32m",
  yellow: "\x1b[33m",
  red: "\x1b[31m",
  magenta: "\x1b[35m",
};

function color(text, ...styles) {
  return `${styles.join("")}${text}${C.reset}`;
}

function printBanner(title, subtitle = "") {
  const line = "═".repeat(46);
  console.log(color(`\n${line}`, C.blue, C.bold));
  console.log(color(`  ${title}`, C.green, C.bold));
  if (subtitle) console.log(color(`  ${subtitle}`, C.magenta));
  console.log(color(`${line}\n`, C.blue, C.bold));
}

function fetchJson(url, redirects = 0) {
  return new Promise((resolve, reject) => {
    const req = https.get(url, { timeout: TIMEOUT_MS }, (res) => {
      const { statusCode, headers } = res;

      // Redirect support
      if (
        statusCode >= 300 &&
        statusCode < 400 &&
        headers.location &&
        redirects < MAX_REDIRECTS
      ) {
        res.resume(); // освобождаем сокет
        const nextUrl = new URL(headers.location, url).toString();
        return resolve(fetchJson(nextUrl, redirects + 1));
      }

      if (!statusCode || statusCode < 200 || statusCode >= 300) {
        res.resume();
        return reject(
          new Error(`Request failed: ${url} (status: ${statusCode ?? "unknown"})`)
        );
      }

      let raw = "";
      res.setEncoding("utf8");

      res.on("data", (chunk) => {
        raw += chunk;
      });

      res.on("end", () => {
        try {
          resolve(JSON.parse(raw));
        } catch (err) {
          reject(new Error(`Invalid JSON from ${url}: ${err.message}`));
        }
      });
    });

    req.on("timeout", () => {
      req.destroy(new Error(`Request timeout after ${TIMEOUT_MS}ms: ${url}`));
    });

    req.on("error", (err) => reject(err));
  });
}

async function saveTranslation(langCode, data) {
  const filePath = path.join(OUTPUT_DIR, `${langCode}.json`);
  await writeFile(filePath, JSON.stringify(data, null, 2), "utf8");
  return filePath;
}

async function mapLimit(items, limit, worker) {
  const results = new Array(items.length);
  let index = 0;

  const runners = Array.from({ length: Math.min(limit, items.length) }, async () => {
    while (true) {
      const currentIndex = index++;
      if (currentIndex >= items.length) break;

      try {
        results[currentIndex] = await worker(items[currentIndex], currentIndex);
      } catch (error) {
        results[currentIndex] = { ok: false, error };
      }
    }
  });

  await Promise.all(runners);
  return results;
}

async function downloadLanguage(lang, i, total) {
  const label = `[${String(i + 1).padStart(2, "0")}/${String(total).padStart(2, "0")}]`;
  const code = lang?.code || "unknown";

  if (!lang?.json_file) {
    console.log(color(`${label} ⚠ ${code}: json_file отсутствует`, C.yellow));
    return { ok: false, code, reason: "json_file missing" };
  }

  try {
    const translation = await fetchJson(lang.json_file);
    const filePath = await saveTranslation(code, translation);

    console.log(color(`${label} ✓ ${code} → ${filePath}`, C.green));
    return { ok: true, code, filePath };
  } catch (error) {
    console.log(color(`${label} ✗ ${code}: ${error.message}`, C.red));
    return { ok: false, code, reason: error.message };
  }
}

async function main() {
  printBanner("Language Downloader", API_URL);

  await mkdir(OUTPUT_DIR, { recursive: true });

  const payload = await fetchJson(API_URL);
  const languages = payload?.data?.languages;

  if (!Array.isArray(languages) || languages.length === 0) {
    console.log(color("Языки не найдены в ответе API.", C.yellow));
    return;
  }

  console.log(color(`Найдено языков: ${languages.length}\n`, C.blue, C.bold));

  const total = languages.length;
  const results = await mapLimit(languages, CONCURRENCY, (lang, i) =>
    downloadLanguage(lang, i, total)
  );

  const success = results.filter((r) => r?.ok).length;
  const failed = total - success;

  printBanner("Готово");
  console.log(color(`Успешно: ${success}`, C.green, C.bold));
  console.log(color(`Ошибок:  ${failed}`, failed ? C.red : C.green, C.bold));

  if (failed > 0) process.exitCode = 1;
}

main().catch((error) => {
  console.error(color(`\nКритическая ошибка: ${error.message}`, C.red, C.bold));
  process.exit(1);
});
