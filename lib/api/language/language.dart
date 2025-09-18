import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:proweb_student_app/models/lang_pro_item/lang_pro_item.dart';
import 'package:proweb_student_app/models/lang_pro_list_item/lang_pro_list_item.dart';
import 'package:proweb_student_app/models/response_model/response_model.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:easy_localization/easy_localization.dart';
import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

class LocalizationService {
  final String apiKey = '066685a20ee223b5d66f43f61b1910c8';
  final String serverUrl = "https://langpro.it-proweb.uz/api/v1/languages";
  final Dio dio = sl<Dio>();
  Future<void> fetchAndCacheTranslations() async {
    final SharedPreferences prefs = sl<SharedPreferences>();
    final languages = await _fetchSupportedLanguages();
    if (languages.isNotEmpty) {
      List<String> localSavedLanguage = languages
          .map((a) => jsonEncode(a.toJson()))
          .toList();
      await prefs.setStringList('translations', localSavedLanguage);
    }
    for (final lang in languages) {
      final langSaved = prefs.getString('translation_${lang.shortName}');
      if (langSaved != null) {
        final Map<String, dynamic> jsonLang = jsonDecode(langSaved);
        final langSaveded = LangProItem.fromJson(jsonLang);
        if (langSaveded.version == lang.version) {
          continue;
        }
      }
      if (lang.shortName != null && lang.version != null) {
        final translations = await _fetchTranslations(
          lang.shortName!,
          lang.version!,
        );
        await prefs.setString(
          'translation_${lang.shortName}',
          jsonEncode(translations),
        );
      }
    }
  }

  Future<List<LangProListItem>> _fetchSupportedLanguages() async {
    final SharedPreferences prefs = sl<SharedPreferences>();
    try {
      final response = await dio.get('$serverUrl/$apiKey/languages/');
      if (response.statusCode == 200) {
        final apiResponse = ApiResponse<LangProListItem>.fromJson(
          response.data,
          (data) => LangProListItem.fromJson(data as Map<String, dynamic>),
        );
        final apiResponseData = apiResponse.whenOrNull(
          list: (results) {
            return results;
          },
        );
        if (apiResponseData != null) {
          await prefs.setStringList(
            'translations',
            apiResponseData.map((e) => jsonEncode(e)).toList(),
          );
          return apiResponseData;
        }
      }
    } catch (e) {
      print("Error fetching supported languages: $e");
      try {
        final listSavedLang = prefs.getStringList('translations');
        if (listSavedLang != null) {
          final List<LangProListItem> items = listSavedLang
              .map((a) => LangProListItem.fromJson(jsonDecode(a)))
              .toList();
          return items;
        }
      } catch (err) {
        print(err);
      }
    }
    LangProListItem langError = LangProListItem(
      isActive: true,
      name: 'Русский',
      shortName: 'ru',
      version: 0,
    );
    final listSavedLang = prefs.getStringList('translations');
    if (listSavedLang == null) {
      await prefs.setStringList('translations', [
        jsonEncode(langError.toJson()),
      ]);
    }
    return [];
  }

  Future<Map<String, dynamic>> _fetchTranslations(
    String language,
    int version,
  ) async {
    try {
      final response = await dio.get<Map<String, dynamic>>(
        '$serverUrl/$apiKey/$language/$version',
      );
      if (response.statusCode == 200 && response.data != null) {
        return response.data!['results'];
      }
    } catch (e) {
      print("Error fetching translations for $language: $e");
    }
    return {};
  }

  Future<Map<String, dynamic>> loadCachedTranslations(String language) async {
    final SharedPreferences prefs = sl<SharedPreferences>();
    final cachedData = prefs.getString('translation_$language');
    if (cachedData != null) {
      final activeLang = prefs.getString('activeLang');
      if (activeLang != language) {
        await prefs.setString('activeLang', language);
      }
      final json = jsonDecode(cachedData);
      if (json['categories'] is Map) {
        return json['categories'];
      }
    } else {
      try {
        String jsonString = await rootBundle.loadString(
          'assets/translations/$language.json',
        );
        print(jsonString);
        Map<String, dynamic> jsonData = jsonDecode(jsonString);
        return jsonData;
      } catch (_) {}
    }
    return {};
  }

  List<LangProListItem> loadloadCachedLangList() {
    final SharedPreferences prefs = sl<SharedPreferences>();
    final cachedData = prefs.getStringList('translations');
    if (cachedData != null) {
      return cachedData
          .map((e) => LangProListItem.fromJson(jsonDecode(e)))
          .toList();
    }
    return [];
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
