import 'dart:convert';
import 'dart:math';
import 'dart:io';
// import 'package:auto_route/auto_route.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:open_file/open_file.dart';
import 'package:phone_numbers_parser/phone_numbers_parser.dart';
import 'package:proweb_student_app/api/fetch/abstract_fetch.dart';
import 'package:proweb_student_app/api/token_manage/token_manage.dart';
import 'package:proweb_student_app/bloc/auth/auth_bloc.dart';
import 'package:proweb_student_app/models/my_profile/my_profile.dart';
import 'package:proweb_student_app/models/platform_info/platform_info.dart';
import 'package:proweb_student_app/models/response_model/response_model.dart';
import 'package:proweb_student_app/models/session_response/session_response.dart';
import 'package:proweb_student_app/models/session_token/session_token.dart';
import 'package:proweb_student_app/models/user/user.dart';
import 'package:proweb_student_app/utils/enum/base_enum.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';
import 'package:proweb_student_app/utils/global_context/global_context.dart';
import 'package:share_plus/share_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:talker_logger/talker_logger.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:uuid/uuid.dart';

enum GetMyProfileEnum { local, network }

enum DateSeporator { w, wd, wMY, day, dot, dash, dashMd, dotMd, dotMY, dashMY }

class ErrorUser {}

class LocalData {
  MyProfile? _profile;
  MyProfile? get profile => _profile;
  double? _time;
  double? _setTime;

  void setTime(int time) {
    _time = time.toDouble() * 1000;
    _setTime = DateTime.now().millisecondsSinceEpoch.toDouble();
  }

  double getTime() {
    final current = DateTime.now().millisecondsSinceEpoch.toDouble();
    if (_time != null && _setTime != null) {
      double timeOstatok = current - (_setTime ?? 0);
      return (_time ?? 0) + timeOstatok;
    } else {
      return current;
    }
  }

  bool hasUuid() {
    final prefs = sl<SharedPreferences>();
    return prefs.getString('uuid') != null;
  }

  Future<String> uuid() async {
    final prefs = sl<SharedPreferences>();
    final uuidPrefs = prefs.getString('uuid');
    if (uuidPrefs == null) {
      final Uuid uuid = Uuid();
      final String uuidGenerate = uuid.v4();
      await prefs.setString('uuid', uuidGenerate);
      return uuidGenerate;
    }
    return uuidPrefs;
  }

  Future<PlatformInfo?> getPlatformInfo() async {
    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    if (Platform.isIOS) {
      IosDeviceInfo iosInfo = await deviceInfo.iosInfo;
      return PlatformInfo(
        deviceName: '${iosInfo.utsname.machine} iOS ${iosInfo.systemVersion}',
        deviceType: 'iOS App',
      );
    } else if (Platform.isAndroid) {
      AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
      if (androidInfo.isPhysicalDevice) {
        return PlatformInfo(
          deviceName:
              '${androidInfo.manufacturer} ${androidInfo.model} Android ${androidInfo.version.release}',
          deviceType: 'Android App',
        );
      }
    }
    return null;
  }

  String blockLesson({
    required double lesson,
    double? blockLessonCount,
    double? lessonCount,
  }) {
    if (blockLessonCount != null && lessonCount != null) {
      final double less = lesson % blockLessonCount;
      final blockCurrent = (lesson / blockLessonCount).ceil().toString();
      final currentLesson = (less == 0 ? blockLessonCount : less)
          .ceil()
          .toString();
      return 'group.gr_block_and_lesson'.tr(
        namedArgs: {'block': blockCurrent, 'lesson': currentLesson},
      );
    }
    return 'group.gr_lesson'.tr(
      namedArgs: {'lesson': lesson.toInt().toString()},
    );
  }

  String block({required double lesson, required double blockLessonCount}) {
    final blockCurrent = (lesson / blockLessonCount).ceil().toString();

    return 'group.gr_block'.tr(namedArgs: {'block': blockCurrent});
  }

  String plural(String raw, int count) {
    final forms = raw.split('|').map((s) => s.trim()).toList();

    if (forms.length < 3) {
      return raw;
    }

    final n = count.abs();
    final n1 = n % 10;
    final n2 = n % 100;

    String form;
    if (n1 == 1 && n2 != 11) {
      form = forms[0];
    } else if (n1 >= 2 && n1 <= 4 && (n2 < 12 || n2 > 14)) {
      form = forms[1];
    } else {
      form = forms[2];
    }

    return form;
  }

  String getDateString({
    required DateTime date,
    DateSeporator seporator = DateSeporator.w,
  }) {
    if (seporator.name == DateSeporator.dash.name) {
      return '${date.year}-${date.month < 10 ? '0${date.month}' : date.month}-${date.day < 10 ? '0${date.day}' : date.day}';
    } else if (seporator.name == DateSeporator.dashMd.name) {
      return '${date.month < 10 ? '0${date.month}' : date.month}-${date.day < 10 ? '0${date.day}' : date.day}';
    } else if (seporator.name == DateSeporator.dotMd.name) {
      return '${date.day < 10 ? '0${date.day}' : date.day}.${date.month < 10 ? '0${date.month}' : date.month}';
    } else if (seporator.name == DateSeporator.dot.name) {
      return '${date.day < 10 ? '0${date.day}' : date.day}.${date.month < 10 ? '0${date.month}' : date.month}.${date.year}';
    } else if (seporator == DateSeporator.dotMY) {
      return '${date.month < 10 ? '0${date.month}' : date.month}.${date.year}';
    } else if (seporator == DateSeporator.dashMY) {
      return '${date.year}-${date.month < 10 ? '0${date.month}' : date.month}';
    } else if (seporator.name == DateSeporator.w.name) {
      return '${date.day < 10 ? '0${date.day}' : date.day} ${'global_data.date_month_${date.month}'.tr()}, ${date.year}';
    } else if (seporator.name == DateSeporator.wd.name) {
      return '${date.day < 10 ? '0${date.day}' : date.day} ${'global_data.date_month_${date.month}'.tr()}';
    } else if (seporator.name == DateSeporator.wMY.name) {
      return '${'global_data.date_month_${date.month}_from'.tr()} ${date.year}';
    } else {
      return 'global_data.day_${date.weekday}'.tr();
    }
  }

  String nameMyProfile(MyProfile profile) {
    if (profile.lastName != null && profile.patronymic != null) {
      return '${profile.lastName} ${profile.firstName} ${profile.patronymic}';
    } else if (profile.lastName != null) {
      return '${profile.lastName} ${profile.firstName}';
    } else {
      return profile.firstName;
    }
  }

  String nameUser(User? user) {
    if (user?.lastName != null && user?.patronymic != null) {
      return '${user?.lastName} ${user?.firstName} ${user?.patronymic}';
    } else if (user?.lastName != null) {
      return '${user?.lastName} ${user?.firstName}';
    } else {
      return user?.firstName ?? '';
    }
  }

  String removeHtmlTags(String input) {
    input = input.replaceAll('<br>', '\n');
    final tagRegExp = RegExp(r'<[^>]*>', multiLine: true, caseSensitive: false);
    return input.replaceAll(tagRegExp, '');
  }

  String generateUrlVideo({required String publickPath, required String slug}) {
    return 'http://${InternetAddress.loopbackIPv4.host}:50432/video/?publickpath=$publickPath&slug=$slug';
  }

  String formatSize(
    int megabytes, {
    FileSizeType type = FileSizeType.mb,
    bool? round,
  }) {
    if (type == FileSizeType.mb) {
      if (megabytes < 1000) {
        return '$megabytes MB';
      } else {
        double gigabytes = megabytes / 1000;
        return '${gigabytes.toStringAsFixed(2)} GB';
      }
    } else {
      if (megabytes <= 0) return "0 B";
      double bytes = megabytes.toDouble();
      const List<String> sizes = ["B", "KB", "MB", "GB", "TB", "PB"];
      int i = (bytes > 0) ? (log(bytes) / log(1000)).floor() : 0;
      double size = bytes / pow(1000, i);

      return "${(i >= 3 || round == null || round == false ? size.toStringAsFixed(1).replaceAll('.', ',') : size.round())} ${sizes[i]}";
    }
  }

  Future<void> openFile({required String path, String? errorMsg}) async {
    try {
      final file = File(path);
      if (await file.exists()) {
        await OpenFile.open(path);
      }
    } catch (e) {
      Fluttertoast.showToast(
        msg: errorMsg ?? 'global_data.error_open_file'.tr(),
      );
    }
  }

  Future<void> openLink({String? url, String? errorMsg}) async {
    try {
      if (url != null) {
        final uri = Uri.parse(url);
        if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {}
      }
    } catch (e) {
      Fluttertoast.showToast(
        msg: errorMsg ?? 'global_data.error_open_link_msg'.tr(),
      );
    }
  }

  Future<void> shareFiles({
    required List<String> files,
    String? errorMsg,
  }) async {
    try {
      final List<XFile> filesGlob = [];
      for (var element in files) {
        final file = File(element);
        if (await file.exists()) {
          filesGlob.add(XFile(file.path));
        }
      }
      if (filesGlob.isNotEmpty) {
        SharePlus.instance.share(
          ShareParams(files: filesGlob, text: 'group_homework.share_file'.tr()),
        );
      }
    } catch (e) {
      Fluttertoast.showToast(
        msg: errorMsg ?? 'global_data.error_share_files'.tr(),
      );
    }
  }

  Future<FilePickerResult?> filePicker({
    FileType type = FileType.any,
    bool allowMultiple = false,
    String? errorMsg,
  }) async {
    FilePickerResult? result;
    result = await FilePicker.platform.pickFiles(
      type: type,
      allowMultiple: allowMultiple,
    );

    if (result == null) {
      Fluttertoast.showToast(
        msg: errorMsg ?? "group_homework.file_select_error".tr(),
      );
    }
    return result;
  }

  Future<ErrorUser?> requestMyProfile(GetMyProfileEnum getType) async {
    if (getType == GetMyProfileEnum.local) {
      return await _getMyProfileForLocal();
    } else if (getType == GetMyProfileEnum.network) {
      return await _getMyProfileForNetwork();
    }
    return null;
  }

  Future<ErrorUser?> _getMyProfileForNetwork() async {
    String path = '/api/v1/auth/my-profile/';
    final response = await sl<AuthFetch>().get(path: path);
    final responseProfile = response.fold<MyProfile?>(
      (l) {
        return null;
      },
      (r) {
        final listResponse = ApiResponse<MyProfile>.fromJson(
          r,
          (data) => MyProfile.fromJson(data as Map<String, dynamic>),
        );
        return listResponse.whenOrNull(
          results: (results) {
            final prefs = sl<SharedPreferences>();
            String jsonProfile = jsonEncode(results.toJson());
            prefs.setString('myprofile', jsonProfile);
            return results;
          },
        );
      },
    );

    if (responseProfile != null) {
      final jsonProfile = responseProfile.toJson();
      final String strProfile = jsonEncode(jsonProfile);
      final prefs = sl<SharedPreferences>();
      await prefs.setString('myprofile', strProfile);
      _profile = responseProfile;
      return null;
    }
    return ErrorUser();
  }

  Future<ErrorUser?> _getMyProfileForLocal() async {
    final prefs = sl<SharedPreferences>();
    final profilePrefs = prefs.getString('myprofile');
    if (profilePrefs != null) {
      final profileJSON = jsonDecode(profilePrefs);
      final isValidData = _isValidData(profileJSON);
      if (isValidData) {
        _profile = MyProfile.fromJson(profileJSON);
        return null;
      } else {
        prefs.remove('myprofile');
      }
    }
    return ErrorUser();
  }

  bool _isValidData(dynamic json) {
    return json['id'] != null &&
        json['phone'] != null &&
        json['first_name'] != null;
  }

  Future<void> updateProfile({required MyProfile profile}) async {
    final jsonProfile = profile.toJson();
    final String strProfile = jsonEncode(jsonProfile);
    final prefs = sl<SharedPreferences>();
    await prefs.setString('myprofile', strProfile);
    _profile = profile;
  }

  Future<void> _removeProfile() async {
    _profile = null;
    final prefs = sl<SharedPreferences>();
    await prefs.remove('myprofile');
  }

  bool hasAuth() {
    final prefs = sl<SharedPreferences>();
    final accessToken = prefs.getString('access_token');
    final refreshToken = prefs.getString('refresh_token');
    final sinceEpochEnd = prefs.getInt('since_epoch_end');
    final lengthTime = prefs.getInt('length_time');
    final bool isAuth =
        (accessToken != null &&
        refreshToken != null &&
        sinceEpochEnd != null &&
        lengthTime != null);
    if (isAuth == false) {
      _deleteAuth();
    }
    return isAuth;
  }

  Future<void> _deleteAuth() async {
    final prefs = sl<SharedPreferences>();
    final accessToken = prefs.getString('access_token');
    final refreshToken = prefs.getString('refresh_token');
    final sinceEpochEnd = prefs.getInt('since_epoch_end');
    final lengthTime = prefs.getInt('length_time');
    await _removeProfile();
    if (accessToken != null) {
      await prefs.remove('access_token');
    }
    if (refreshToken != null) {
      await prefs.remove('refresh_token');
    }
    if (sinceEpochEnd != null) {
      await prefs.remove('since_epoch_end');
    }
    if (lengthTime != null) {
      await prefs.remove('length_time');
    }
  }

  Future<void> setLocalSession(SessionToken session) async {
    final prefs = sl<SharedPreferences>();
    await prefs.setString('access_token', session.accessToken);
    await prefs.setString('refresh_token', session.refreshToken);
    await prefs.setInt('since_epoch_end', session.sinceEpochEnd);
    await prefs.setInt('length_time', session.lengthTime);
  }

  String? getRefreshToken() {
    final prefs = sl<SharedPreferences>();
    return prefs.getString('refresh_token');
  }

  String? getAccessToken() {
    final prefs = sl<SharedPreferences>();
    return prefs.getString('access_token');
  }

  bool getLifeToken() {
    final prefs = sl<SharedPreferences>();
    final int sinceEpoch = prefs.getInt('since_epoch_end') ?? 0;
    final int now = DateTime.now().millisecondsSinceEpoch;
    return sinceEpoch > now;
  }

  Future<void> localLogOut() async {
    try {
      // await FirebaseMessaging.instance.deleteToken();
      // String? token = sl<SharedPreferences>().getString('tokenFirebase');
      // if (token != null) {
      //   await sl<SharedPreferences>().remove('tokenFirebase');
      // }
      await cashDB.deleteAllCache();
      await _removeProfile();
      await _deleteAuth();
      sl<AuthBloc>().add(AuthEvent.logOut());
      final context = sl<NavigationService>().context;
      if (context != null && context.mounted && !context.router.isRoot) {
        context.router.popUntilRoot();
      }
    } catch (e) {
      TalkerLogger().error(e);
    }
  }

  Future<void> cacheImageWithCachedNetworkImage(String url) async {
    final provider = CachedNetworkImageProvider(url);

    final file = await provider.obtainCacheStatus(
      configuration: ImageConfiguration.empty,
    );

    if (file != null) {
    } else {
      final stream = provider.resolve(const ImageConfiguration());
      final listener = ImageStreamListener((imageInfo, _) {});
      stream.addListener(listener);
    }
  }

  Future<String?> getFirebaseToken() async {
    String? token = sl<SharedPreferences>().getString('tokenFirebase');
    if (token == null) {
      final fireToken = await FirebaseMessaging.instance.getToken();
      if (fireToken != null) {
        await sl<SharedPreferences>().setString('tokenFirebase', fireToken);
        token = fireToken;
      }
    }
    return token;
  }

  String secondToTime(double seconds) {
    if (seconds < 60) return '00:${nulNumber(seconds)}';

    int minutes = seconds ~/ 60;
    int remainingSeconds = seconds.round() % 60;

    if (minutes < 60) {
      return remainingSeconds > 0
          ? '${nulNumber(minutes.toDouble())}:${nulNumber(remainingSeconds.toDouble())}'
          : '${nulNumber(minutes.toDouble())}:00';
    }

    int hours = minutes ~/ 60;
    minutes %= 60;

    return (minutes > 0 || remainingSeconds > 0)
        ? '${nulNumber(hours.toDouble())}:${nulNumber(minutes.toDouble())}:${nulNumber(remainingSeconds.toDouble())}'
        : '${nulNumber(hours.toDouble())}:00:00';
  }

  String nulNumber(double number) {
    return number < 10 ? '0${number.toInt()}' : '${number.toInt()}';
  }

  Future<bool?> saveToken({required SessionResponse session}) async {
    TokenManager dataToken = sl<TokenParses>().parseTokenManager(
      session.accessToken,
    );
    if (dataToken.actions.isNotEmpty) {
      int find = dataToken.actions.firstWhere(
        (a) => a == -1,
        orElse: () => -10,
      );
      if (find == -1) {
        final int lengthTime = (dataToken.exp - dataToken.iat) * 1000 - 10000;
        final int nowToEnd = DateTime.now().millisecondsSinceEpoch + lengthTime;
        final SessionToken saved = SessionToken(
          accessToken: session.accessToken,
          refreshToken: session.refreshToken,
          sinceEpochEnd: nowToEnd,
          lengthTime: lengthTime,
        );
        await setLocalSession(saved);
        await requestMyProfile(GetMyProfileEnum.network);
        return true;
      } else {
        return false;
      }
    } else {
      return false;
    }
  }

  String getContryCode({required String phone, IsoCode? iso}) {
    try {
      final phoneNumber = PhoneNumber.parse(phone, destinationCountry: iso);
      final formattedNsn = phoneNumber.formatNsn();
      return formattedNsn;
    } catch (_) {
      return phone;
    }
  }
}
