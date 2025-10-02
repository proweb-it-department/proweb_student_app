import 'package:auto_route/auto_route.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';
import 'package:proweb_student_app/api/repositories/file_repositories/file_repositories.dart';
import 'package:proweb_student_app/api/repositories/video_group_repositiories/video_group_repositiories.dart';
import 'package:proweb_student_app/api/repositories/video_product_repositiories/video_product_repositiories.dart';
import 'package:proweb_student_app/dependencies/interceptor_dio.dart';
import 'package:proweb_student_app/models/db/cache_database.dart';
import 'package:proweb_student_app/utils/download_manager/file_download_manager.dart';
import 'package:queue/queue.dart';
import 'package:proweb_student_app/api/fetch/fetch.dart';
import 'package:proweb_student_app/api/language/language.dart';
import 'package:proweb_student_app/api/local_data/local_data.dart';
import 'package:proweb_student_app/api/token_manage/token_manage.dart';
import 'package:proweb_student_app/api/video_repository/video_repository.dart';
import 'package:proweb_student_app/api/ws/ws_connection_state.dart';
import 'package:proweb_student_app/bloc/auth/auth_bloc.dart';
import 'package:proweb_student_app/models/db/db.dart';
import 'package:proweb_student_app/utils/download_manager/video_download_manager.dart';
import 'package:proweb_student_app/utils/global_context/global_context.dart';
import 'package:proweb_student_app/utils/notification_manager/notification_manager.dart';
import 'package:proweb_student_app/utils/user_list/user_list.dart';
import 'package:proweb_student_app/utils/ws_connect/ws_connect.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:proweb_student_app/api/network/auth/post/auth.dart';
import 'package:proweb_student_app/api/network/main/get/main.dart';
import 'package:proweb_student_app/api/network/main/post/main.dart';
import 'package:proweb_student_app/api/network/video/get/video.dart';
import '../../api/fetch/abstract_fetch.dart';

import 'injection_container.config.dart';

final sl = GetIt.instance;
final cashDB = CacheDatabase();
@InjectableInit()
Future<void> configureDependencies() async => sl.init();

@module
abstract class AppModule {
  AppModule();

  @preResolve
  Future<SharedPreferences> prefs() => SharedPreferences.getInstance();

  @lazySingleton
  TokenParses get tokenManage => TokenParses();

  @singleton
  AuthBloc get authBloc => AuthBloc();

  @lazySingleton
  Queue get queue => Queue();

  @lazySingleton
  WsConnectionState get wsConnections => WsConnectionState();

  @singleton
  AutoRouteObserver get autoRouteObserver => AutoRouteObserver();

  @lazySingleton
  LocalizationService get localizationService => LocalizationService();

  @singleton
  AppDatabase get appdatabase => AppDatabase();

  @lazySingleton
  NotificationManager get localNotification => NotificationManager();

  @lazySingleton
  Dio dio() {
    final dio = Dio(
      BaseOptions(
        connectTimeout: const Duration(seconds: 15),
        receiveTimeout: const Duration(hours: 2),
      ),
    );

    dio.interceptors.add(DriftCacheInterceptor(cashDB));
    return dio;
  }

  @lazySingleton
  UserList get userList => UserList();

  @lazySingleton
  Channel get channel => Channel();

  @lazySingleton
  NavigationService get navigationService => NavigationService();

  @lazySingleton
  DownloadManager get downloadManager => DownloadManager();

  @lazySingleton
  DownloadManagerFile get downloadManagerFile => DownloadManagerFile();

  @lazySingleton
  VideoRepository get videoRepository => VideoRepository();

  @lazySingleton
  VideoGroupRepositiories get videoGroupRepositiories =>
      VideoGroupRepositiories();

  @lazySingleton
  VideoProductRepositiories get videoProductRepositiories =>
      VideoProductRepositiories();

  @lazySingleton
  GetResponsesMain get getResponseMain => GetResponsesMain();

  @lazySingleton
  PostResponsesAuth get postResponseAuth => PostResponsesAuth();

  @lazySingleton
  PostResponsesMain get postResponseMain => PostResponsesMain();

  @lazySingleton
  GetResponsesVideo get getResponseVideo => GetResponsesVideo();

  @lazySingleton
  LocalData get localData => LocalData();

  @lazySingleton
  FileRepository get fileRepository => FileRepository();

  @lazySingleton
  DioHTTP get diohttp => DioHTTP();

  @LazySingleton(as: AuthFetch)
  Fetch get auth => Fetch(main: GlobalPath.auth);

  @LazySingleton(as: MainFetch)
  Fetch get main => Fetch(main: GlobalPath.main);

  @LazySingleton(as: VideoFetch)
  Fetch get video => Fetch(main: GlobalPath.video);

  @LazySingleton(as: ChatFetch)
  Fetch get chat => Fetch(main: GlobalPath.chat);
}

class DioHTTP {
  final _dio = Dio();
  Dio get dio => _dio;
}

class GlobalPath {
  // static final String auth = 'http://192.168.1.210:8000';
  // static final String main = 'http://192.168.1.210:8010';
  // static final String video = 'http://192.168.1.210:8030';
  // static final String chat = 'http://192.168.1.210:8020';
  // static final String chatWss = 'ws://192.168.1.210:8020/ws/main/';
  static final String auth = 'https://auth.proweb.uz';
  static final String main = 'https://main.proweb.uz';
  static final String video = 'https://video.proweb.uz';
  static final String chat = 'https://chat.proweb.uz';
  static final String chatWss = 'wss://chat.proweb.uz/ws/main/';
  static Future<String> getCachePath() async {
    final dir = await getApplicationDocumentsDirectory();
    final path = '${dir.path}/dio_cache.sqlite';
    return path;
  }
}

class LimitRequest {
  static final int homework = 50;
  static final int ranking = 50;
  static final int products = 100;
  static final int services = 100;
  static final int tarif = 100;
  static final int purchasesTarif = 100;
  static final int purchasesService = 100;
}
