import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:proweb_student_app/models/lang_pro_item/lang_pro_item.dart';
import 'package:proweb_student_app/models/lang_pro_list_item/lang_pro_list_item.dart';
import 'package:proweb_student_app/models/response_model/response_model.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:easy_localization/easy_localization.dart';
import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

final mainDataName = 'translationsV2';

class LocalizationService {
  final String apiKey = 'JM5ogCkxD785';
  final String serverUrl =
      "https://langpro.proweb.uz/api/v1/langpro/interfaces/";
  final Dio dio = sl<Dio>();
  Future<void> fetchAndCacheTranslations() async {
    final SharedPreferences prefs = sl<SharedPreferences>();
    final languages = await _fetchSupportedLanguages();

    await prefs.setString(mainDataName, jsonEncode(languages));
    if (languages == null) return;
    for (final lang in languages.languages!) {
      final langSaved = prefs.getString('${mainDataName}_${lang.code}');
      if (langSaved != null) {
        final Map<String, dynamic> jsonLang = jsonDecode(langSaved);
        final langSaveded = LangProItem.fromJson(jsonLang);
        if (langSaveded.version == languages.currentVersion) {
          continue;
        }
      }
      if (lang.code != null) {
        final translations = await _fetchTranslations(
          lang.jsonFile!,
          lang.code!,
        );
        await prefs.setString(
          '${mainDataName}_${lang.code}',
          jsonEncode(translations),
        );
      }
    }
  }

  Future<LangProListItem?> _fetchSupportedLanguages() async {
    final SharedPreferences prefs = sl<SharedPreferences>();
    try {
      final response = await dio.get('$serverUrl/$apiKey/');
      if (response.statusCode == 200) {
        final apiResponse = ApiResponse<LangProListItem>.fromJson(
          response.data,
          (data) => LangProListItem.fromJson(data as Map<String, dynamic>),
        );
        final apiResponseData = apiResponse.whenOrNull(
          results: (results) {
            return results;
          },
        );
        if (apiResponseData != null) {
          await prefs.setString(mainDataName, jsonEncode(apiResponseData));
          return apiResponseData;
        }
      }
    } catch (e) {
      if (kDebugMode) {
        print("Error fetching supported languages: $e");
      }
      try {
        final langproSaved = prefs.getString(mainDataName);
        if (langproSaved != null) {
          return LangProListItem.fromJson(jsonDecode(langproSaved));
        }
      } catch (err) {
        if (kDebugMode) {
          print(err);
        }
      }
    }
    LangProListItem langError = LangProListItem(
      currentVersion: 0,
      languages: [Languages(code: 'ru', jsonFile: null, name: "Русский")],
    );
    final listSavedLang = prefs.getStringList(mainDataName);
    if (listSavedLang == null) {
      await prefs.setString(mainDataName, jsonEncode(langError));
    }
    return null;
  }

  Future<Map<String, dynamic>> _fetchTranslations(
    String url,
    String code, {
    int refresh = 3,
  }) async {
    try {
      final response = await dio.get<Map<String, dynamic>>(
        url,
        options: Options(
          sendTimeout: const Duration(seconds: 10),
          receiveTimeout: const Duration(seconds: 15),
        ),
      );
      if (response.statusCode == 200 && response.data != null) {
        return response.data!;
      }
    } catch (e) {
      if (kDebugMode) {
        print("Error fetching translations for $url: $e");
        if (refresh == 0) return {};
        await Future.delayed(Duration(milliseconds: 200));
        return _fetchTranslations(url, code, refresh: refresh - 1);
      }
    }
    String jsonString = await rootBundle.loadString(
      'assets/translations/$code.json',
    );
    if (kDebugMode) {
      print(jsonString);
    }
    Map<String, dynamic> jsonData = jsonDecode(jsonString);
    return jsonData;
  }

  Future<Map<String, dynamic>> loadCachedTranslations(String language) async {
    final SharedPreferences prefs = sl<SharedPreferences>();
    final cachedData = prefs.getString('${mainDataName}_$language');
    if (cachedData != null) {
      final activeLang = prefs.getString('${mainDataName}_activeLang');
      if (activeLang != language) {
        await prefs.setString('${mainDataName}_activeLang', language);
      }
      final json = jsonDecode(cachedData);
      if (json is Map<String, dynamic>) {
        return json;
      }
    } else {
      try {
        String jsonString = await rootBundle.loadString(
          'assets/translations/$language.json',
        );
        if (kDebugMode) {
          print(jsonString);
        }
        Map<String, dynamic> jsonData = jsonDecode(jsonString);
        return jsonData;
      } catch (_) {}
    }
    return {};
  }

  LangProListItem? loadloadCachedLangList() {
    final SharedPreferences prefs = sl<SharedPreferences>();
    final cachedData = prefs.getString(mainDataName);
    if (cachedData != null) {
      return LangProListItem.fromJson(jsonDecode(cachedData));
    }
    return null;
  }
}

class CustomAssetLoader extends AssetLoader {
  final LocalizationService localizationService;

  CustomAssetLoader(this.localizationService);

  @override
  Future<Map<String, dynamic>> load(String path, Locale locale) async {
    final loadData = await localizationService.loadCachedTranslations(
      locale.languageCode,
    );
    return loadData;
  }
}
