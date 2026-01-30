// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i790;
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:proweb_student_app/api/fetch/abstract_fetch.dart' as _i320;
import 'package:proweb_student_app/api/language/language.dart' as _i97;
import 'package:proweb_student_app/api/local_data/local_data.dart' as _i896;
import 'package:proweb_student_app/api/network/auth/get/auth.dart' as _i1008;
import 'package:proweb_student_app/api/network/auth/post/auth.dart' as _i1059;
import 'package:proweb_student_app/api/network/chat/get/chat.dart' as _i133;
import 'package:proweb_student_app/api/network/chat/post/chat.dart' as _i35;
import 'package:proweb_student_app/api/network/main/get/main.dart' as _i426;
import 'package:proweb_student_app/api/network/main/post/main.dart' as _i484;
import 'package:proweb_student_app/api/network/video/get/video.dart' as _i202;
import 'package:proweb_student_app/api/repositories/file_repositories/file_repositories.dart'
    as _i104;
import 'package:proweb_student_app/api/repositories/video_group_repositiories/video_group_repositiories.dart'
    as _i631;
import 'package:proweb_student_app/api/repositories/video_product_repositiories/video_product_repositiories.dart'
    as _i736;
import 'package:proweb_student_app/api/token_manage/token_manage.dart' as _i367;
import 'package:proweb_student_app/api/video_repository/video_repository.dart'
    as _i126;
import 'package:proweb_student_app/api/ws/ws_connection_state.dart' as _i798;
import 'package:proweb_student_app/bloc/auth/auth_bloc.dart' as _i96;
import 'package:proweb_student_app/models/db/db.dart' as _i705;
import 'package:proweb_student_app/utils/download_manager/file_download_manager.dart'
    as _i1051;
import 'package:proweb_student_app/utils/download_manager/video_download_manager.dart'
    as _i593;
import 'package:proweb_student_app/utils/gi/injection_container.dart' as _i284;
import 'package:proweb_student_app/utils/global_context/global_context.dart'
    as _i276;
import 'package:proweb_student_app/utils/notification_manager/notification_manager.dart'
    as _i280;
import 'package:proweb_student_app/utils/user_list/user_list.dart' as _i23;
import 'package:proweb_student_app/utils/ws_connect/ws_connect.dart' as _i232;
import 'package:queue/queue.dart' as _i617;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final appModule = _$AppModule();
    await gh.factoryAsync<_i460.SharedPreferences>(
      () => appModule.prefs(),
      preResolve: true,
    );
    gh.singleton<_i96.AuthBloc>(() => appModule.authBloc);
    gh.singleton<_i790.AutoRouteObserver>(() => appModule.autoRouteObserver);
    gh.singleton<_i705.AppDatabase>(() => appModule.appdatabase);
    gh.lazySingleton<_i367.TokenParses>(() => appModule.tokenManage);
    gh.lazySingleton<_i617.Queue>(() => appModule.queue);
    gh.lazySingleton<_i798.WsConnectionState>(() => appModule.wsConnections);
    gh.lazySingleton<_i97.LocalizationService>(
      () => appModule.localizationService,
    );
    gh.lazySingleton<_i280.NotificationManager>(
      () => appModule.localNotification,
    );
    gh.lazySingleton<_i23.UserList>(() => appModule.userList);
    gh.lazySingleton<_i232.Channel>(() => appModule.channel);
    gh.lazySingleton<_i276.NavigationService>(
      () => appModule.navigationService,
    );
    gh.lazySingleton<_i593.DownloadManager>(() => appModule.downloadManager);
    gh.lazySingleton<_i1051.DownloadManagerFile>(
      () => appModule.downloadManagerFile,
    );
    gh.lazySingleton<_i126.VideoRepository>(() => appModule.videoRepository);
    gh.lazySingleton<_i631.VideoGroupRepositiories>(
      () => appModule.videoGroupRepositiories,
    );
    gh.lazySingleton<_i736.VideoProductRepositiories>(
      () => appModule.videoProductRepositiories,
    );
    gh.lazySingleton<_i426.GetResponsesMain>(() => appModule.getResponseMain);
    gh.lazySingleton<_i1059.PostResponsesAuth>(
      () => appModule.postResponseAuth,
    );
    gh.lazySingleton<_i1008.GetResponsesAuth>(() => appModule.getResponseAuth);
    gh.lazySingleton<_i484.PostResponsesMain>(() => appModule.postResponseMain);
    gh.lazySingleton<_i202.GetResponsesVideo>(() => appModule.getResponseVideo);
    gh.lazySingleton<_i133.GetResponsesChat>(() => appModule.getResponseChat);
    gh.lazySingleton<_i35.PostResponsesChat>(() => appModule.postResponseChat);
    gh.lazySingleton<_i896.LocalData>(() => appModule.localData);
    gh.lazySingleton<_i104.FileRepository>(() => appModule.fileRepository);
    gh.lazySingleton<_i284.DioHTTP>(() => appModule.diohttp);
    gh.lazySingleton<_i361.Dio>(() => appModule.dio());
    gh.lazySingleton<_i320.AuthFetch>(() => appModule.auth);
    gh.lazySingleton<_i320.MainFetch>(() => appModule.main);
    gh.lazySingleton<_i320.ChatFetch>(() => appModule.chat);
    gh.lazySingleton<_i320.VideoFetch>(() => appModule.video);
    return this;
  }
}

class _$AppModule extends _i284.AppModule {}
