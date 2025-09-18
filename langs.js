const { writeFileSync } = require("fs");
const https = require("https");

const request = https.request(
  `https://langpro.it-proweb.uz/api/v1/languages/066685a20ee223b5d66f43f61b1910c8/languages/`,
  (response) => {
    let data = "";
    response.on("data", (chunk) => {
      data = data + chunk.toString();
    });
    response.on("end", () => {
      const body1 = JSON.parse(data);
      const body2 = JSON.stringify(body1, null, 2);
      const body = JSON.parse(body2);

      for (let i = 0; i < body.results.length; i++) {
        const lang = body.results[i];
        const request2 = https.request(
          `https://langpro.it-proweb.uz/api/v1/languages/066685a20ee223b5d66f43f61b1910c8/${lang.short_name}/${lang.version}/`,
          (response2) => {
            let data2 = "";
            response2.on("data", (chunk) => {
              data2 = data2 + chunk.toString();
            });
            response2.on("end", () => {
              const body2 = JSON.parse(data2);

              if (
                body2.results.childrens &&
                body2.results.childrens.length > 0
              ) {
                const childrens = body2.results.childrens;
                for (const index in childrens) {
                  const current = childrens[index];

                  for (const key in current) {
                    if (!body2.results.categories[key]) {
                      body2.results.categories[key] = current[key];
                    } else {
                      body2.results.categories[key] = {
                        ...current[key],
                        ...body2.results.categories[key],
                      };
                    }
                  }
                }
              }
              const obj = JSON.stringify(body2.results.categories);

              writeFileSync(
                __dirname + "/assets/translations/"+ lang.short_name + ".json",
                obj,
                "utf-8"
              );
              console.log(`
\x1b[1;34m===============================
\x1b[1;32m|   Language downloaded        |
\x1b[1;35m|      🥳🥳🥳🥳🥳           |
\x1b[1;34m===============================
\x1b[0m`);
              
            });
          }
        );
        request2.on("error", (error) => {
          console.log("An error", error);
        });

        request2.end();
      }
    });
  }
);
request.on("error", (error) => {
  console.log("An error", error);
});

request.end();
