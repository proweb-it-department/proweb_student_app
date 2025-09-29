// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i60;
import 'package:collection/collection.dart' as _i68;
import 'package:flutter/material.dart' as _i61;
import 'package:proweb_student_app/bloc/coworking_list_reserve/coworking_list_reserve_bloc.dart'
    as _i62;
import 'package:proweb_student_app/bloc/feadback_list/feadback_list_bloc.dart'
    as _i63;
import 'package:proweb_student_app/bloc/group_detail/group_detail_bloc.dart'
    as _i64;
import 'package:proweb_student_app/interface/components/story/story_features.dart'
    as _i51;
import 'package:proweb_student_app/interface/components/story/view_story_model.dart'
    as _i67;
import 'package:proweb_student_app/interface/pages/app_screen.dart' as _i2;
import 'package:proweb_student_app/interface/pages/auth/auth_screen/auth_screen.dart'
    as _i4;
import 'package:proweb_student_app/interface/pages/coworking_screen/coworking_reserve_screen.dart'
    as _i8;
import 'package:proweb_student_app/interface/pages/coworking_screen/coworking_screen.dart'
    as _i9;
import 'package:proweb_student_app/interface/pages/coworking_screen/coworking_sign_up_screen.dart'
    as _i10;
import 'package:proweb_student_app/interface/pages/download_file_features/download_file_features.dart'
    as _i12;
import 'package:proweb_student_app/interface/pages/download_video_features/download_video_features.dart'
    as _i14;
import 'package:proweb_student_app/interface/pages/download_video_features/downloads_exclusive_product_video/downloads_exclusive_product_modules_material_video.dart'
    as _i15;
import 'package:proweb_student_app/interface/pages/download_video_features/downloads_exclusive_product_video/downloads_exclusive_product_modules_material_videos.dart'
    as _i16;
import 'package:proweb_student_app/interface/pages/download_video_features/downloads_exclusive_product_video/downloads_exclusive_product_modules_video.dart'
    as _i17;
import 'package:proweb_student_app/interface/pages/download_video_features/downloads_group_video/downloads_group_lesson_video.dart'
    as _i18;
import 'package:proweb_student_app/interface/pages/download_video_features/downloads_group_video/downloads_group_videos_screen.dart'
    as _i19;
import 'package:proweb_student_app/interface/pages/feedback/created_feadback_screen.dart'
    as _i11;
import 'package:proweb_student_app/interface/pages/feedback/main_feadback_screen.dart'
    as _i20;
import 'package:proweb_student_app/interface/pages/feedback/view_item_feadback_screen.dart'
    as _i59;
import 'package:proweb_student_app/interface/pages/group/main_group_features/attendance_info_features/attendance_info_features.dart'
    as _i3;
import 'package:proweb_student_app/interface/pages/group/main_group_features/bonuce_info_features/bonuce_info_features.dart'
    as _i5;
import 'package:proweb_student_app/interface/pages/group/main_group_features/grede_book/grade_book_screen.dart'
    as _i21;
import 'package:proweb_student_app/interface/pages/group/main_group_features/group_info_features/group_info_features.dart'
    as _i22;
import 'package:proweb_student_app/interface/pages/group/main_group_features/group_ranking_screen/group_ranking_screen.dart'
    as _i23;
import 'package:proweb_student_app/interface/pages/group/main_group_features/homework_info_features/homework_info_features.dart'
    as _i28;
import 'package:proweb_student_app/interface/pages/group/main_group_features/homework_page_feature/features/homework_about_feature/homework_about_feature.dart'
    as _i27;
import 'package:proweb_student_app/interface/pages/group/main_group_features/homework_page_feature/features/homework_about_feature/homework_comments_feature.dart'
    as _i30;
import 'package:proweb_student_app/interface/pages/group/main_group_features/homework_page_feature/features/homework_about_feature/homework_student_work_feature.dart'
    as _i31;
import 'package:proweb_student_app/interface/pages/group/main_group_features/homework_page_feature/homework_page_feature.dart'
    as _i29;
import 'package:proweb_student_app/interface/pages/group/main_group_features/lesson_info_features/lesson_info_features.dart'
    as _i32;
import 'package:proweb_student_app/interface/pages/group/main_group_features/lesson_video_features/lesson_video_features.dart'
    as _i33;
import 'package:proweb_student_app/interface/pages/group/main_group_features/main_group_features.dart'
    as _i34;
import 'package:proweb_student_app/interface/pages/group/main_group_features/material_page_feature/material_page_feature.dart'
    as _i36;
import 'package:proweb_student_app/interface/pages/group/main_group_features/news_info_features/news_info_features.dart'
    as _i44;
import 'package:proweb_student_app/interface/pages/group/test_page_feature/feature/testing_comment_feature.dart'
    as _i54;
import 'package:proweb_student_app/interface/pages/group/test_page_feature/feature/testing_feature.dart'
    as _i55;
import 'package:proweb_student_app/interface/pages/group/test_page_feature/test_page_feature.dart'
    as _i53;
import 'package:proweb_student_app/interface/pages/home_screen/features/transaction_view_screen.dart'
    as _i56;
import 'package:proweb_student_app/interface/pages/home_screen/home_screen.dart'
    as _i26;
import 'package:proweb_student_app/interface/pages/home_screen/tabs/home_balance_screen.dart'
    as _i24;
import 'package:proweb_student_app/interface/pages/home_screen/tabs/home_main_screen.dart'
    as _i25;
import 'package:proweb_student_app/interface/pages/main_download_features/main_download_features.dart'
    as _i13;
import 'package:proweb_student_app/interface/pages/ranking_screen/pages/all_ranking_screen.dart'
    as _i1;
import 'package:proweb_student_app/interface/pages/ranking_screen/pages/course_ranking_screen.dart'
    as _i6;
import 'package:proweb_student_app/interface/pages/ranking_screen/pages/course_ranking_view_screen.dart'
    as _i7;
import 'package:proweb_student_app/interface/pages/ranking_screen/pages/my_ranking_screen.dart'
    as _i43;
import 'package:proweb_student_app/interface/pages/ranking_screen/ranking_screen.dart'
    as _i48;
import 'package:proweb_student_app/interface/pages/shop_screen/pages/my_purchases/products/my_purchases_products_screen.dart'
    as _i39;
import 'package:proweb_student_app/interface/pages/shop_screen/pages/my_purchases/services/my_purchases_services_screen.dart'
    as _i41;
import 'package:proweb_student_app/interface/pages/shop_screen/pages/my_purchases/tarifs/my_purchases_tarifs_screen.dart'
    as _i42;
import 'package:proweb_student_app/interface/pages/shop_screen/pages/my_purchases_screen.dart'
    as _i40;
import 'package:proweb_student_app/interface/pages/shop_screen/pages/products/product_item/material_product_screen.dart'
    as _i35;
import 'package:proweb_student_app/interface/pages/shop_screen/pages/products/product_item/module_product_screen.dart'
    as _i37;
import 'package:proweb_student_app/interface/pages/shop_screen/pages/products/product_item/module_screen.dart'
    as _i38;
import 'package:proweb_student_app/interface/pages/shop_screen/pages/products/product_item/product_screen.dart'
    as _i46;
import 'package:proweb_student_app/interface/pages/shop_screen/pages/products/product_screen.dart'
    as _i45;
import 'package:proweb_student_app/interface/pages/shop_screen/pages/products/products_list.dart'
    as _i47;
import 'package:proweb_student_app/interface/pages/shop_screen/pages/services/services_list.dart'
    as _i49;
import 'package:proweb_student_app/interface/pages/shop_screen/pages/tarif/tarifs_screen.dart'
    as _i52;
import 'package:proweb_student_app/interface/pages/shop_screen/shop_screen.dart'
    as _i50;
import 'package:proweb_student_app/interface/pages/user_screen/user_screen.dart'
    as _i57;
import 'package:proweb_student_app/interface/pages/video_slug_features/video_slug_features.dart'
    as _i58;
import 'package:proweb_student_app/models/products/products.dart' as _i66;
import 'package:proweb_student_app/models/products_modules/products_modules.dart'
    as _i65;
import 'package:proweb_student_app/models/transactions_student/transactions_student.dart'
    as _i69;

/// generated route for
/// [_i1.AllRankingScreen]
class AllRankingRoute extends _i60.PageRouteInfo<void> {
  const AllRankingRoute({List<_i60.PageRouteInfo>? children})
    : super(AllRankingRoute.name, initialChildren: children);

  static const String name = 'AllRankingRoute';

  static _i60.PageInfo page = _i60.PageInfo(
    name,
    builder: (data) {
      return const _i1.AllRankingScreen();
    },
  );
}

/// generated route for
/// [_i2.AppScreen]
class AppRoute extends _i60.PageRouteInfo<void> {
  const AppRoute({List<_i60.PageRouteInfo>? children})
    : super(AppRoute.name, initialChildren: children);

  static const String name = 'AppRoute';

  static _i60.PageInfo page = _i60.PageInfo(
    name,
    builder: (data) {
      return const _i2.AppScreen();
    },
  );
}

/// generated route for
/// [_i3.AttendanceGroupInfoScreen]
class AttendanceGroupInfoRoute
    extends _i60.PageRouteInfo<AttendanceGroupInfoRouteArgs> {
  AttendanceGroupInfoRoute({_i61.Key? key, List<_i60.PageRouteInfo>? children})
    : super(
        AttendanceGroupInfoRoute.name,
        args: AttendanceGroupInfoRouteArgs(key: key),
        initialChildren: children,
      );

  static const String name = 'AttendanceGroupInfoRoute';

  static _i60.PageInfo page = _i60.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<AttendanceGroupInfoRouteArgs>(
        orElse: () => AttendanceGroupInfoRouteArgs(),
      );
      return _i3.AttendanceGroupInfoScreen(
        key: args.key,
        groupId: pathParams.getInt('id'),
      );
    },
  );
}

class AttendanceGroupInfoRouteArgs {
  const AttendanceGroupInfoRouteArgs({this.key});

  final _i61.Key? key;

  @override
  String toString() {
    return 'AttendanceGroupInfoRouteArgs{key: $key}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! AttendanceGroupInfoRouteArgs) return false;
    return key == other.key;
  }

  @override
  int get hashCode => key.hashCode;
}

/// generated route for
/// [_i4.AuthScreen]
class AuthRoute extends _i60.PageRouteInfo<void> {
  const AuthRoute({List<_i60.PageRouteInfo>? children})
    : super(AuthRoute.name, initialChildren: children);

  static const String name = 'AuthRoute';

  static _i60.PageInfo page = _i60.PageInfo(
    name,
    builder: (data) {
      return const _i4.AuthScreen();
    },
  );
}

/// generated route for
/// [_i5.BonuceGroupInfoScreen]
class BonuceGroupInfoRoute
    extends _i60.PageRouteInfo<BonuceGroupInfoRouteArgs> {
  BonuceGroupInfoRoute({_i61.Key? key, List<_i60.PageRouteInfo>? children})
    : super(
        BonuceGroupInfoRoute.name,
        args: BonuceGroupInfoRouteArgs(key: key),
        initialChildren: children,
      );

  static const String name = 'BonuceGroupInfoRoute';

  static _i60.PageInfo page = _i60.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<BonuceGroupInfoRouteArgs>(
        orElse: () => BonuceGroupInfoRouteArgs(),
      );
      return _i5.BonuceGroupInfoScreen(
        key: args.key,
        groupId: pathParams.getInt('id'),
      );
    },
  );
}

class BonuceGroupInfoRouteArgs {
  const BonuceGroupInfoRouteArgs({this.key});

  final _i61.Key? key;

  @override
  String toString() {
    return 'BonuceGroupInfoRouteArgs{key: $key}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! BonuceGroupInfoRouteArgs) return false;
    return key == other.key;
  }

  @override
  int get hashCode => key.hashCode;
}

/// generated route for
/// [_i6.CourseRankingScreen]
class CourseRankingRoute extends _i60.PageRouteInfo<void> {
  const CourseRankingRoute({List<_i60.PageRouteInfo>? children})
    : super(CourseRankingRoute.name, initialChildren: children);

  static const String name = 'CourseRankingRoute';

  static _i60.PageInfo page = _i60.PageInfo(
    name,
    builder: (data) {
      return const _i6.CourseRankingScreen();
    },
  );
}

/// generated route for
/// [_i7.CourseRankingViewScreen]
class CourseRankingViewRoute
    extends _i60.PageRouteInfo<CourseRankingViewRouteArgs> {
  CourseRankingViewRoute({
    _i61.Key? key,
    required int id,
    List<_i60.PageRouteInfo>? children,
  }) : super(
         CourseRankingViewRoute.name,
         args: CourseRankingViewRouteArgs(key: key, id: id),
         rawPathParams: {'id': id},
         initialChildren: children,
       );

  static const String name = 'CourseRankingViewRoute';

  static _i60.PageInfo page = _i60.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<CourseRankingViewRouteArgs>(
        orElse: () => CourseRankingViewRouteArgs(id: pathParams.getInt('id')),
      );
      return _i7.CourseRankingViewScreen(key: args.key, id: args.id);
    },
  );
}

class CourseRankingViewRouteArgs {
  const CourseRankingViewRouteArgs({this.key, required this.id});

  final _i61.Key? key;

  final int id;

  @override
  String toString() {
    return 'CourseRankingViewRouteArgs{key: $key, id: $id}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! CourseRankingViewRouteArgs) return false;
    return key == other.key && id == other.id;
  }

  @override
  int get hashCode => key.hashCode ^ id.hashCode;
}

/// generated route for
/// [_i8.CoworkingReserveScreen]
class CoworkingReserveRoute
    extends _i60.PageRouteInfo<CoworkingReserveRouteArgs> {
  CoworkingReserveRoute({
    _i61.Key? key,
    required _i62.CoworkingListReserveBloc bloc,
    List<_i60.PageRouteInfo>? children,
  }) : super(
         CoworkingReserveRoute.name,
         args: CoworkingReserveRouteArgs(key: key, bloc: bloc),
         initialChildren: children,
       );

  static const String name = 'CoworkingReserveRoute';

  static _i60.PageInfo page = _i60.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<CoworkingReserveRouteArgs>();
      return _i8.CoworkingReserveScreen(key: args.key, bloc: args.bloc);
    },
  );
}

class CoworkingReserveRouteArgs {
  const CoworkingReserveRouteArgs({this.key, required this.bloc});

  final _i61.Key? key;

  final _i62.CoworkingListReserveBloc bloc;

  @override
  String toString() {
    return 'CoworkingReserveRouteArgs{key: $key, bloc: $bloc}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! CoworkingReserveRouteArgs) return false;
    return key == other.key && bloc == other.bloc;
  }

  @override
  int get hashCode => key.hashCode ^ bloc.hashCode;
}

/// generated route for
/// [_i9.CoworkingScreen]
class CoworkingRoute extends _i60.PageRouteInfo<void> {
  const CoworkingRoute({List<_i60.PageRouteInfo>? children})
    : super(CoworkingRoute.name, initialChildren: children);

  static const String name = 'CoworkingRoute';

  static _i60.PageInfo page = _i60.PageInfo(
    name,
    builder: (data) {
      return const _i9.CoworkingScreen();
    },
  );
}

/// generated route for
/// [_i10.CoworkingSignUpScreen]
class CoworkingSignUpRoute
    extends _i60.PageRouteInfo<CoworkingSignUpRouteArgs> {
  CoworkingSignUpRoute({
    _i61.Key? key,
    required int visitId,
    required _i62.CoworkingListReserveBloc bloc,
    List<_i60.PageRouteInfo>? children,
  }) : super(
         CoworkingSignUpRoute.name,
         args: CoworkingSignUpRouteArgs(key: key, visitId: visitId, bloc: bloc),
         initialChildren: children,
       );

  static const String name = 'CoworkingSignUpRoute';

  static _i60.PageInfo page = _i60.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<CoworkingSignUpRouteArgs>();
      return _i10.CoworkingSignUpScreen(
        key: args.key,
        visitId: args.visitId,
        bloc: args.bloc,
      );
    },
  );
}

class CoworkingSignUpRouteArgs {
  const CoworkingSignUpRouteArgs({
    this.key,
    required this.visitId,
    required this.bloc,
  });

  final _i61.Key? key;

  final int visitId;

  final _i62.CoworkingListReserveBloc bloc;

  @override
  String toString() {
    return 'CoworkingSignUpRouteArgs{key: $key, visitId: $visitId, bloc: $bloc}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! CoworkingSignUpRouteArgs) return false;
    return key == other.key && visitId == other.visitId && bloc == other.bloc;
  }

  @override
  int get hashCode => key.hashCode ^ visitId.hashCode ^ bloc.hashCode;
}

/// generated route for
/// [_i11.CreatedFeadbackScreen]
class CreatedFeadbackRoute
    extends _i60.PageRouteInfo<CreatedFeadbackRouteArgs> {
  CreatedFeadbackRoute({
    _i61.Key? key,
    required _i63.FeadbackListBloc bloc,
    List<_i60.PageRouteInfo>? children,
  }) : super(
         CreatedFeadbackRoute.name,
         args: CreatedFeadbackRouteArgs(key: key, bloc: bloc),
         initialChildren: children,
       );

  static const String name = 'CreatedFeadbackRoute';

  static _i60.PageInfo page = _i60.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<CreatedFeadbackRouteArgs>();
      return _i11.CreatedFeadbackScreen(key: args.key, bloc: args.bloc);
    },
  );
}

class CreatedFeadbackRouteArgs {
  const CreatedFeadbackRouteArgs({this.key, required this.bloc});

  final _i61.Key? key;

  final _i63.FeadbackListBloc bloc;

  @override
  String toString() {
    return 'CreatedFeadbackRouteArgs{key: $key, bloc: $bloc}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! CreatedFeadbackRouteArgs) return false;
    return key == other.key && bloc == other.bloc;
  }

  @override
  int get hashCode => key.hashCode ^ bloc.hashCode;
}

/// generated route for
/// [_i12.DownloadFilesScreen]
class DownloadFilesRoute extends _i60.PageRouteInfo<void> {
  const DownloadFilesRoute({List<_i60.PageRouteInfo>? children})
    : super(DownloadFilesRoute.name, initialChildren: children);

  static const String name = 'DownloadFilesRoute';

  static _i60.PageInfo page = _i60.PageInfo(
    name,
    builder: (data) {
      return const _i12.DownloadFilesScreen();
    },
  );
}

/// generated route for
/// [_i13.DownloadScreen]
class DownloadRoute extends _i60.PageRouteInfo<void> {
  const DownloadRoute({List<_i60.PageRouteInfo>? children})
    : super(DownloadRoute.name, initialChildren: children);

  static const String name = 'DownloadRoute';

  static _i60.PageInfo page = _i60.PageInfo(
    name,
    builder: (data) {
      return const _i13.DownloadScreen();
    },
  );
}

/// generated route for
/// [_i14.DownloadVideosScreen]
class DownloadVideosRoute extends _i60.PageRouteInfo<void> {
  const DownloadVideosRoute({List<_i60.PageRouteInfo>? children})
    : super(DownloadVideosRoute.name, initialChildren: children);

  static const String name = 'DownloadVideosRoute';

  static _i60.PageInfo page = _i60.PageInfo(
    name,
    builder: (data) {
      return const _i14.DownloadVideosScreen();
    },
  );
}

/// generated route for
/// [_i15.DownloadsExclusiveProductModulesMaterialVideoScreen]
class DownloadsExclusiveProductModulesMaterialVideoRoute
    extends
        _i60.PageRouteInfo<
          DownloadsExclusiveProductModulesMaterialVideoRouteArgs
        > {
  DownloadsExclusiveProductModulesMaterialVideoRoute({
    _i61.Key? key,
    required int moduleId,
    List<_i60.PageRouteInfo>? children,
  }) : super(
         DownloadsExclusiveProductModulesMaterialVideoRoute.name,
         args: DownloadsExclusiveProductModulesMaterialVideoRouteArgs(
           key: key,
           moduleId: moduleId,
         ),
         initialChildren: children,
       );

  static const String name =
      'DownloadsExclusiveProductModulesMaterialVideoRoute';

  static _i60.PageInfo page = _i60.PageInfo(
    name,
    builder: (data) {
      final args = data
          .argsAs<DownloadsExclusiveProductModulesMaterialVideoRouteArgs>();
      return _i15.DownloadsExclusiveProductModulesMaterialVideoScreen(
        key: args.key,
        moduleId: args.moduleId,
      );
    },
  );
}

class DownloadsExclusiveProductModulesMaterialVideoRouteArgs {
  const DownloadsExclusiveProductModulesMaterialVideoRouteArgs({
    this.key,
    required this.moduleId,
  });

  final _i61.Key? key;

  final int moduleId;

  @override
  String toString() {
    return 'DownloadsExclusiveProductModulesMaterialVideoRouteArgs{key: $key, moduleId: $moduleId}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! DownloadsExclusiveProductModulesMaterialVideoRouteArgs)
      return false;
    return key == other.key && moduleId == other.moduleId;
  }

  @override
  int get hashCode => key.hashCode ^ moduleId.hashCode;
}

/// generated route for
/// [_i16.DownloadsExclusiveProductModulesMaterialVideosScreen]
class DownloadsExclusiveProductModulesMaterialVideosRoute
    extends
        _i60.PageRouteInfo<
          DownloadsExclusiveProductModulesMaterialVideosRouteArgs
        > {
  DownloadsExclusiveProductModulesMaterialVideosRoute({
    _i61.Key? key,
    required int materialId,
    List<_i60.PageRouteInfo>? children,
  }) : super(
         DownloadsExclusiveProductModulesMaterialVideosRoute.name,
         args: DownloadsExclusiveProductModulesMaterialVideosRouteArgs(
           key: key,
           materialId: materialId,
         ),
         initialChildren: children,
       );

  static const String name =
      'DownloadsExclusiveProductModulesMaterialVideosRoute';

  static _i60.PageInfo page = _i60.PageInfo(
    name,
    builder: (data) {
      final args = data
          .argsAs<DownloadsExclusiveProductModulesMaterialVideosRouteArgs>();
      return _i16.DownloadsExclusiveProductModulesMaterialVideosScreen(
        key: args.key,
        materialId: args.materialId,
      );
    },
  );
}

class DownloadsExclusiveProductModulesMaterialVideosRouteArgs {
  const DownloadsExclusiveProductModulesMaterialVideosRouteArgs({
    this.key,
    required this.materialId,
  });

  final _i61.Key? key;

  final int materialId;

  @override
  String toString() {
    return 'DownloadsExclusiveProductModulesMaterialVideosRouteArgs{key: $key, materialId: $materialId}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! DownloadsExclusiveProductModulesMaterialVideosRouteArgs)
      return false;
    return key == other.key && materialId == other.materialId;
  }

  @override
  int get hashCode => key.hashCode ^ materialId.hashCode;
}

/// generated route for
/// [_i17.DownloadsExclusiveProductModulesVideoScreen]
class DownloadsExclusiveProductModulesVideoRoute
    extends _i60.PageRouteInfo<DownloadsExclusiveProductModulesVideoRouteArgs> {
  DownloadsExclusiveProductModulesVideoRoute({
    _i61.Key? key,
    required int productId,
    List<_i60.PageRouteInfo>? children,
  }) : super(
         DownloadsExclusiveProductModulesVideoRoute.name,
         args: DownloadsExclusiveProductModulesVideoRouteArgs(
           key: key,
           productId: productId,
         ),
         initialChildren: children,
       );

  static const String name = 'DownloadsExclusiveProductModulesVideoRoute';

  static _i60.PageInfo page = _i60.PageInfo(
    name,
    builder: (data) {
      final args = data
          .argsAs<DownloadsExclusiveProductModulesVideoRouteArgs>();
      return _i17.DownloadsExclusiveProductModulesVideoScreen(
        key: args.key,
        productId: args.productId,
      );
    },
  );
}

class DownloadsExclusiveProductModulesVideoRouteArgs {
  const DownloadsExclusiveProductModulesVideoRouteArgs({
    this.key,
    required this.productId,
  });

  final _i61.Key? key;

  final int productId;

  @override
  String toString() {
    return 'DownloadsExclusiveProductModulesVideoRouteArgs{key: $key, productId: $productId}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! DownloadsExclusiveProductModulesVideoRouteArgs) return false;
    return key == other.key && productId == other.productId;
  }

  @override
  int get hashCode => key.hashCode ^ productId.hashCode;
}

/// generated route for
/// [_i18.DownloadsGroupLessonVideoScreen]
class DownloadsGroupLessonVideoRoute
    extends _i60.PageRouteInfo<DownloadsGroupLessonVideoRouteArgs> {
  DownloadsGroupLessonVideoRoute({
    _i61.Key? key,
    required int groupId,
    int? lessonCount,
    int? blockLessonCount,
    List<_i60.PageRouteInfo>? children,
  }) : super(
         DownloadsGroupLessonVideoRoute.name,
         args: DownloadsGroupLessonVideoRouteArgs(
           key: key,
           groupId: groupId,
           lessonCount: lessonCount,
           blockLessonCount: blockLessonCount,
         ),
         initialChildren: children,
       );

  static const String name = 'DownloadsGroupLessonVideoRoute';

  static _i60.PageInfo page = _i60.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<DownloadsGroupLessonVideoRouteArgs>();
      return _i18.DownloadsGroupLessonVideoScreen(
        key: args.key,
        groupId: args.groupId,
        lessonCount: args.lessonCount,
        blockLessonCount: args.blockLessonCount,
      );
    },
  );
}

class DownloadsGroupLessonVideoRouteArgs {
  const DownloadsGroupLessonVideoRouteArgs({
    this.key,
    required this.groupId,
    this.lessonCount,
    this.blockLessonCount,
  });

  final _i61.Key? key;

  final int groupId;

  final int? lessonCount;

  final int? blockLessonCount;

  @override
  String toString() {
    return 'DownloadsGroupLessonVideoRouteArgs{key: $key, groupId: $groupId, lessonCount: $lessonCount, blockLessonCount: $blockLessonCount}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! DownloadsGroupLessonVideoRouteArgs) return false;
    return key == other.key &&
        groupId == other.groupId &&
        lessonCount == other.lessonCount &&
        blockLessonCount == other.blockLessonCount;
  }

  @override
  int get hashCode =>
      key.hashCode ^
      groupId.hashCode ^
      lessonCount.hashCode ^
      blockLessonCount.hashCode;
}

/// generated route for
/// [_i19.DownloadsGroupVideosScreen]
class DownloadsGroupVideosRoute
    extends _i60.PageRouteInfo<DownloadsGroupVideosRouteArgs> {
  DownloadsGroupVideosRoute({
    _i61.Key? key,
    required int lessonId,
    List<_i60.PageRouteInfo>? children,
  }) : super(
         DownloadsGroupVideosRoute.name,
         args: DownloadsGroupVideosRouteArgs(key: key, lessonId: lessonId),
         initialChildren: children,
       );

  static const String name = 'DownloadsGroupVideosRoute';

  static _i60.PageInfo page = _i60.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<DownloadsGroupVideosRouteArgs>();
      return _i19.DownloadsGroupVideosScreen(
        key: args.key,
        lessonId: args.lessonId,
      );
    },
  );
}

class DownloadsGroupVideosRouteArgs {
  const DownloadsGroupVideosRouteArgs({this.key, required this.lessonId});

  final _i61.Key? key;

  final int lessonId;

  @override
  String toString() {
    return 'DownloadsGroupVideosRouteArgs{key: $key, lessonId: $lessonId}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! DownloadsGroupVideosRouteArgs) return false;
    return key == other.key && lessonId == other.lessonId;
  }

  @override
  int get hashCode => key.hashCode ^ lessonId.hashCode;
}

/// generated route for
/// [_i20.FeedbackScreen]
class FeedbackRoute extends _i60.PageRouteInfo<void> {
  const FeedbackRoute({List<_i60.PageRouteInfo>? children})
    : super(FeedbackRoute.name, initialChildren: children);

  static const String name = 'FeedbackRoute';

  static _i60.PageInfo page = _i60.PageInfo(
    name,
    builder: (data) {
      return const _i20.FeedbackScreen();
    },
  );
}

/// generated route for
/// [_i21.GradeBookScreen]
class GradeBookRoute extends _i60.PageRouteInfo<GradeBookRouteArgs> {
  GradeBookRoute({_i61.Key? key, List<_i60.PageRouteInfo>? children})
    : super(
        GradeBookRoute.name,
        args: GradeBookRouteArgs(key: key),
        initialChildren: children,
      );

  static const String name = 'GradeBookRoute';

  static _i60.PageInfo page = _i60.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<GradeBookRouteArgs>(
        orElse: () => GradeBookRouteArgs(),
      );
      return _i21.GradeBookScreen(
        key: args.key,
        groupId: pathParams.getInt('id'),
      );
    },
  );
}

class GradeBookRouteArgs {
  const GradeBookRouteArgs({this.key});

  final _i61.Key? key;

  @override
  String toString() {
    return 'GradeBookRouteArgs{key: $key}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! GradeBookRouteArgs) return false;
    return key == other.key;
  }

  @override
  int get hashCode => key.hashCode;
}

/// generated route for
/// [_i22.GroupGroupInfoScreen]
class GroupGroupInfoRoute extends _i60.PageRouteInfo<GroupGroupInfoRouteArgs> {
  GroupGroupInfoRoute({_i61.Key? key, List<_i60.PageRouteInfo>? children})
    : super(
        GroupGroupInfoRoute.name,
        args: GroupGroupInfoRouteArgs(key: key),
        initialChildren: children,
      );

  static const String name = 'GroupGroupInfoRoute';

  static _i60.PageInfo page = _i60.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<GroupGroupInfoRouteArgs>(
        orElse: () => GroupGroupInfoRouteArgs(),
      );
      return _i22.GroupGroupInfoScreen(
        key: args.key,
        groupId: pathParams.getInt('id'),
      );
    },
  );
}

class GroupGroupInfoRouteArgs {
  const GroupGroupInfoRouteArgs({this.key});

  final _i61.Key? key;

  @override
  String toString() {
    return 'GroupGroupInfoRouteArgs{key: $key}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! GroupGroupInfoRouteArgs) return false;
    return key == other.key;
  }

  @override
  int get hashCode => key.hashCode;
}

/// generated route for
/// [_i23.GroupRankingScreen]
class GroupRankingRoute extends _i60.PageRouteInfo<GroupRankingRouteArgs> {
  GroupRankingRoute({_i61.Key? key, List<_i60.PageRouteInfo>? children})
    : super(
        GroupRankingRoute.name,
        args: GroupRankingRouteArgs(key: key),
        initialChildren: children,
      );

  static const String name = 'GroupRankingRoute';

  static _i60.PageInfo page = _i60.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<GroupRankingRouteArgs>(
        orElse: () => GroupRankingRouteArgs(),
      );
      return _i23.GroupRankingScreen(
        key: args.key,
        groupId: pathParams.getInt('id'),
      );
    },
  );
}

class GroupRankingRouteArgs {
  const GroupRankingRouteArgs({this.key});

  final _i61.Key? key;

  @override
  String toString() {
    return 'GroupRankingRouteArgs{key: $key}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! GroupRankingRouteArgs) return false;
    return key == other.key;
  }

  @override
  int get hashCode => key.hashCode;
}

/// generated route for
/// [_i24.HomeBalanceTab]
class HomeBalanceRoute extends _i60.PageRouteInfo<void> {
  const HomeBalanceRoute({List<_i60.PageRouteInfo>? children})
    : super(HomeBalanceRoute.name, initialChildren: children);

  static const String name = 'HomeBalanceRoute';

  static _i60.PageInfo page = _i60.PageInfo(
    name,
    builder: (data) {
      return const _i24.HomeBalanceTab();
    },
  );
}

/// generated route for
/// [_i25.HomeMainTab]
class HomeMainRoute extends _i60.PageRouteInfo<void> {
  const HomeMainRoute({List<_i60.PageRouteInfo>? children})
    : super(HomeMainRoute.name, initialChildren: children);

  static const String name = 'HomeMainRoute';

  static _i60.PageInfo page = _i60.PageInfo(
    name,
    builder: (data) {
      return const _i25.HomeMainTab();
    },
  );
}

/// generated route for
/// [_i26.HomeScreen]
class HomeRoute extends _i60.PageRouteInfo<void> {
  const HomeRoute({List<_i60.PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static _i60.PageInfo page = _i60.PageInfo(
    name,
    builder: (data) {
      return const _i26.HomeScreen();
    },
  );
}

/// generated route for
/// [_i27.HomeworkAboutScreen]
class HomeworkAboutRoute extends _i60.PageRouteInfo<HomeworkAboutRouteArgs> {
  HomeworkAboutRoute({
    _i61.Key? key,
    _i64.GroupDetailBloc? bloc,
    List<_i60.PageRouteInfo>? children,
  }) : super(
         HomeworkAboutRoute.name,
         args: HomeworkAboutRouteArgs(key: key, bloc: bloc),
         initialChildren: children,
       );

  static const String name = 'HomeworkAboutRoute';

  static _i60.PageInfo page = _i60.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<HomeworkAboutRouteArgs>(
        orElse: () => HomeworkAboutRouteArgs(),
      );
      return _i27.HomeworkAboutScreen(
        key: args.key,
        groupId: pathParams.getInt('id'),
        relationId: pathParams.getInt('relationId'),
        bloc: args.bloc,
      );
    },
  );
}

class HomeworkAboutRouteArgs {
  const HomeworkAboutRouteArgs({this.key, this.bloc});

  final _i61.Key? key;

  final _i64.GroupDetailBloc? bloc;

  @override
  String toString() {
    return 'HomeworkAboutRouteArgs{key: $key, bloc: $bloc}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! HomeworkAboutRouteArgs) return false;
    return key == other.key && bloc == other.bloc;
  }

  @override
  int get hashCode => key.hashCode ^ bloc.hashCode;
}

/// generated route for
/// [_i28.HomeworkGroupInfoScreen]
class HomeworkGroupInfoRoute
    extends _i60.PageRouteInfo<HomeworkGroupInfoRouteArgs> {
  HomeworkGroupInfoRoute({_i61.Key? key, List<_i60.PageRouteInfo>? children})
    : super(
        HomeworkGroupInfoRoute.name,
        args: HomeworkGroupInfoRouteArgs(key: key),
        initialChildren: children,
      );

  static const String name = 'HomeworkGroupInfoRoute';

  static _i60.PageInfo page = _i60.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<HomeworkGroupInfoRouteArgs>(
        orElse: () => HomeworkGroupInfoRouteArgs(),
      );
      return _i28.HomeworkGroupInfoScreen(
        key: args.key,
        groupId: pathParams.getInt('id'),
      );
    },
  );
}

class HomeworkGroupInfoRouteArgs {
  const HomeworkGroupInfoRouteArgs({this.key});

  final _i61.Key? key;

  @override
  String toString() {
    return 'HomeworkGroupInfoRouteArgs{key: $key}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! HomeworkGroupInfoRouteArgs) return false;
    return key == other.key;
  }

  @override
  int get hashCode => key.hashCode;
}

/// generated route for
/// [_i29.HomeworkPageScreen]
class HomeworkRouteRoute extends _i60.PageRouteInfo<HomeworkRouteRouteArgs> {
  HomeworkRouteRoute({
    _i61.Key? key,
    required int relationId,
    required int groupId,
    _i64.GroupDetailBloc? bloc,
    List<_i60.PageRouteInfo>? children,
  }) : super(
         HomeworkRouteRoute.name,
         args: HomeworkRouteRouteArgs(
           key: key,
           relationId: relationId,
           groupId: groupId,
           bloc: bloc,
         ),
         rawPathParams: {'relationId': relationId, 'id': groupId},
         initialChildren: children,
       );

  static const String name = 'HomeworkRouteRoute';

  static _i60.PageInfo page = _i60.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<HomeworkRouteRouteArgs>(
        orElse: () => HomeworkRouteRouteArgs(
          relationId: pathParams.getInt('relationId'),
          groupId: pathParams.getInt('id'),
        ),
      );
      return _i29.HomeworkPageScreen(
        key: args.key,
        relationId: args.relationId,
        groupId: args.groupId,
        bloc: args.bloc,
      );
    },
  );
}

class HomeworkRouteRouteArgs {
  const HomeworkRouteRouteArgs({
    this.key,
    required this.relationId,
    required this.groupId,
    this.bloc,
  });

  final _i61.Key? key;

  final int relationId;

  final int groupId;

  final _i64.GroupDetailBloc? bloc;

  @override
  String toString() {
    return 'HomeworkRouteRouteArgs{key: $key, relationId: $relationId, groupId: $groupId, bloc: $bloc}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! HomeworkRouteRouteArgs) return false;
    return key == other.key &&
        relationId == other.relationId &&
        groupId == other.groupId &&
        bloc == other.bloc;
  }

  @override
  int get hashCode =>
      key.hashCode ^ relationId.hashCode ^ groupId.hashCode ^ bloc.hashCode;
}

/// generated route for
/// [_i30.HomeworkStudentCommentsScreen]
class HomeworkStudentCommentsRoute
    extends _i60.PageRouteInfo<HomeworkStudentCommentsRouteArgs> {
  HomeworkStudentCommentsRoute({
    _i61.Key? key,
    List<_i60.PageRouteInfo>? children,
  }) : super(
         HomeworkStudentCommentsRoute.name,
         args: HomeworkStudentCommentsRouteArgs(key: key),
         initialChildren: children,
       );

  static const String name = 'HomeworkStudentCommentsRoute';

  static _i60.PageInfo page = _i60.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<HomeworkStudentCommentsRouteArgs>(
        orElse: () => HomeworkStudentCommentsRouteArgs(),
      );
      return _i30.HomeworkStudentCommentsScreen(
        key: args.key,
        groupId: pathParams.getInt('id'),
        relationId: pathParams.getInt('relationId'),
      );
    },
  );
}

class HomeworkStudentCommentsRouteArgs {
  const HomeworkStudentCommentsRouteArgs({this.key});

  final _i61.Key? key;

  @override
  String toString() {
    return 'HomeworkStudentCommentsRouteArgs{key: $key}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! HomeworkStudentCommentsRouteArgs) return false;
    return key == other.key;
  }

  @override
  int get hashCode => key.hashCode;
}

/// generated route for
/// [_i31.HomeworkStudentWorkScreen]
class HomeworkStudentWorkRoute
    extends _i60.PageRouteInfo<HomeworkStudentWorkRouteArgs> {
  HomeworkStudentWorkRoute({_i61.Key? key, List<_i60.PageRouteInfo>? children})
    : super(
        HomeworkStudentWorkRoute.name,
        args: HomeworkStudentWorkRouteArgs(key: key),
        initialChildren: children,
      );

  static const String name = 'HomeworkStudentWorkRoute';

  static _i60.PageInfo page = _i60.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<HomeworkStudentWorkRouteArgs>(
        orElse: () => HomeworkStudentWorkRouteArgs(),
      );
      return _i31.HomeworkStudentWorkScreen(
        key: args.key,
        groupId: pathParams.getInt('id'),
        relationId: pathParams.getInt('relationId'),
      );
    },
  );
}

class HomeworkStudentWorkRouteArgs {
  const HomeworkStudentWorkRouteArgs({this.key});

  final _i61.Key? key;

  @override
  String toString() {
    return 'HomeworkStudentWorkRouteArgs{key: $key}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! HomeworkStudentWorkRouteArgs) return false;
    return key == other.key;
  }

  @override
  int get hashCode => key.hashCode;
}

/// generated route for
/// [_i32.LessonGroupInfoScreen]
class LessonGroupInfoRoute
    extends _i60.PageRouteInfo<LessonGroupInfoRouteArgs> {
  LessonGroupInfoRoute({_i61.Key? key, List<_i60.PageRouteInfo>? children})
    : super(
        LessonGroupInfoRoute.name,
        args: LessonGroupInfoRouteArgs(key: key),
        initialChildren: children,
      );

  static const String name = 'LessonGroupInfoRoute';

  static _i60.PageInfo page = _i60.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<LessonGroupInfoRouteArgs>(
        orElse: () => LessonGroupInfoRouteArgs(),
      );
      return _i32.LessonGroupInfoScreen(
        key: args.key,
        groupId: pathParams.getInt('id'),
      );
    },
  );
}

class LessonGroupInfoRouteArgs {
  const LessonGroupInfoRouteArgs({this.key});

  final _i61.Key? key;

  @override
  String toString() {
    return 'LessonGroupInfoRouteArgs{key: $key}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! LessonGroupInfoRouteArgs) return false;
    return key == other.key;
  }

  @override
  int get hashCode => key.hashCode;
}

/// generated route for
/// [_i33.LessonVideoScreen]
class LessonVideoRoute extends _i60.PageRouteInfo<LessonVideoRouteArgs> {
  LessonVideoRoute({
    _i61.Key? key,
    required int lessonId,
    required int groupId,
    List<_i60.PageRouteInfo>? children,
  }) : super(
         LessonVideoRoute.name,
         args: LessonVideoRouteArgs(
           key: key,
           lessonId: lessonId,
           groupId: groupId,
         ),
         rawPathParams: {'lessonid': lessonId, 'id': groupId},
         initialChildren: children,
       );

  static const String name = 'LessonVideoRoute';

  static _i60.PageInfo page = _i60.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<LessonVideoRouteArgs>(
        orElse: () => LessonVideoRouteArgs(
          lessonId: pathParams.getInt('lessonid'),
          groupId: pathParams.getInt('id'),
        ),
      );
      return _i33.LessonVideoScreen(
        key: args.key,
        lessonId: args.lessonId,
        groupId: args.groupId,
      );
    },
  );
}

class LessonVideoRouteArgs {
  const LessonVideoRouteArgs({
    this.key,
    required this.lessonId,
    required this.groupId,
  });

  final _i61.Key? key;

  final int lessonId;

  final int groupId;

  @override
  String toString() {
    return 'LessonVideoRouteArgs{key: $key, lessonId: $lessonId, groupId: $groupId}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! LessonVideoRouteArgs) return false;
    return key == other.key &&
        lessonId == other.lessonId &&
        groupId == other.groupId;
  }

  @override
  int get hashCode => key.hashCode ^ lessonId.hashCode ^ groupId.hashCode;
}

/// generated route for
/// [_i34.MainGroupScreen]
class MainGroupRoute extends _i60.PageRouteInfo<MainGroupRouteArgs> {
  MainGroupRoute({
    _i61.Key? key,
    required int groupId,
    List<_i60.PageRouteInfo>? children,
  }) : super(
         MainGroupRoute.name,
         args: MainGroupRouteArgs(key: key, groupId: groupId),
         rawPathParams: {'id': groupId},
         initialChildren: children,
       );

  static const String name = 'MainGroupRoute';

  static _i60.PageInfo page = _i60.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<MainGroupRouteArgs>(
        orElse: () => MainGroupRouteArgs(groupId: pathParams.getInt('id')),
      );
      return _i34.MainGroupScreen(key: args.key, groupId: args.groupId);
    },
  );
}

class MainGroupRouteArgs {
  const MainGroupRouteArgs({this.key, required this.groupId});

  final _i61.Key? key;

  final int groupId;

  @override
  String toString() {
    return 'MainGroupRouteArgs{key: $key, groupId: $groupId}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! MainGroupRouteArgs) return false;
    return key == other.key && groupId == other.groupId;
  }

  @override
  int get hashCode => key.hashCode ^ groupId.hashCode;
}

/// generated route for
/// [_i35.MaterialProductScreen]
class MaterialProductRoute
    extends _i60.PageRouteInfo<MaterialProductRouteArgs> {
  MaterialProductRoute({
    _i61.Key? key,
    required int materialId,
    required _i65.ProductsModules module,
    required _i66.Products product,
    List<_i60.PageRouteInfo>? children,
  }) : super(
         MaterialProductRoute.name,
         args: MaterialProductRouteArgs(
           key: key,
           materialId: materialId,
           module: module,
           product: product,
         ),
         initialChildren: children,
       );

  static const String name = 'MaterialProductRoute';

  static _i60.PageInfo page = _i60.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<MaterialProductRouteArgs>();
      return _i35.MaterialProductScreen(
        key: args.key,
        materialId: args.materialId,
        module: args.module,
        product: args.product,
      );
    },
  );
}

class MaterialProductRouteArgs {
  const MaterialProductRouteArgs({
    this.key,
    required this.materialId,
    required this.module,
    required this.product,
  });

  final _i61.Key? key;

  final int materialId;

  final _i65.ProductsModules module;

  final _i66.Products product;

  @override
  String toString() {
    return 'MaterialProductRouteArgs{key: $key, materialId: $materialId, module: $module, product: $product}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! MaterialProductRouteArgs) return false;
    return key == other.key &&
        materialId == other.materialId &&
        module == other.module &&
        product == other.product;
  }

  @override
  int get hashCode =>
      key.hashCode ^ materialId.hashCode ^ module.hashCode ^ product.hashCode;
}

/// generated route for
/// [_i36.MaterialViewScreen]
class MaterialViewRoute extends _i60.PageRouteInfo<MaterialViewRouteArgs> {
  MaterialViewRoute({
    _i61.Key? key,
    required int relationId,
    required int groupId,
    List<_i60.PageRouteInfo>? children,
  }) : super(
         MaterialViewRoute.name,
         args: MaterialViewRouteArgs(
           key: key,
           relationId: relationId,
           groupId: groupId,
         ),
         rawPathParams: {'relationId': relationId, 'id': groupId},
         initialChildren: children,
       );

  static const String name = 'MaterialViewRoute';

  static _i60.PageInfo page = _i60.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<MaterialViewRouteArgs>(
        orElse: () => MaterialViewRouteArgs(
          relationId: pathParams.getInt('relationId'),
          groupId: pathParams.getInt('id'),
        ),
      );
      return _i36.MaterialViewScreen(
        key: args.key,
        relationId: args.relationId,
        groupId: args.groupId,
      );
    },
  );
}

class MaterialViewRouteArgs {
  const MaterialViewRouteArgs({
    this.key,
    required this.relationId,
    required this.groupId,
  });

  final _i61.Key? key;

  final int relationId;

  final int groupId;

  @override
  String toString() {
    return 'MaterialViewRouteArgs{key: $key, relationId: $relationId, groupId: $groupId}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! MaterialViewRouteArgs) return false;
    return key == other.key &&
        relationId == other.relationId &&
        groupId == other.groupId;
  }

  @override
  int get hashCode => key.hashCode ^ relationId.hashCode ^ groupId.hashCode;
}

/// generated route for
/// [_i37.ModuleProductScreen]
class ModuleProductRoute extends _i60.PageRouteInfo<ModuleProductRouteArgs> {
  ModuleProductRoute({_i61.Key? key, List<_i60.PageRouteInfo>? children})
    : super(
        ModuleProductRoute.name,
        args: ModuleProductRouteArgs(key: key),
        initialChildren: children,
      );

  static const String name = 'ModuleProductRoute';

  static _i60.PageInfo page = _i60.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<ModuleProductRouteArgs>(
        orElse: () => ModuleProductRouteArgs(),
      );
      return _i37.ModuleProductScreen(
        key: args.key,
        id: pathParams.getInt('id'),
      );
    },
  );
}

class ModuleProductRouteArgs {
  const ModuleProductRouteArgs({this.key});

  final _i61.Key? key;

  @override
  String toString() {
    return 'ModuleProductRouteArgs{key: $key}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ModuleProductRouteArgs) return false;
    return key == other.key;
  }

  @override
  int get hashCode => key.hashCode;
}

/// generated route for
/// [_i38.ModuleScreen]
class ModuleRoute extends _i60.PageRouteInfo<ModuleRouteArgs> {
  ModuleRoute({
    _i61.Key? key,
    required int id,
    required int moduleId,
    required _i65.ProductsModules module,
    required _i66.Products product,
    List<_i60.PageRouteInfo>? children,
  }) : super(
         ModuleRoute.name,
         args: ModuleRouteArgs(
           key: key,
           id: id,
           moduleId: moduleId,
           module: module,
           product: product,
         ),
         initialChildren: children,
       );

  static const String name = 'ModuleRoute';

  static _i60.PageInfo page = _i60.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ModuleRouteArgs>();
      return _i38.ModuleScreen(
        key: args.key,
        id: args.id,
        moduleId: args.moduleId,
        module: args.module,
        product: args.product,
      );
    },
  );
}

class ModuleRouteArgs {
  const ModuleRouteArgs({
    this.key,
    required this.id,
    required this.moduleId,
    required this.module,
    required this.product,
  });

  final _i61.Key? key;

  final int id;

  final int moduleId;

  final _i65.ProductsModules module;

  final _i66.Products product;

  @override
  String toString() {
    return 'ModuleRouteArgs{key: $key, id: $id, moduleId: $moduleId, module: $module, product: $product}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ModuleRouteArgs) return false;
    return key == other.key &&
        id == other.id &&
        moduleId == other.moduleId &&
        module == other.module &&
        product == other.product;
  }

  @override
  int get hashCode =>
      key.hashCode ^
      id.hashCode ^
      moduleId.hashCode ^
      module.hashCode ^
      product.hashCode;
}

/// generated route for
/// [_i39.MyPurchasesProductsScreen]
class MyPurchasesProductsRoute extends _i60.PageRouteInfo<void> {
  const MyPurchasesProductsRoute({List<_i60.PageRouteInfo>? children})
    : super(MyPurchasesProductsRoute.name, initialChildren: children);

  static const String name = 'MyPurchasesProductsRoute';

  static _i60.PageInfo page = _i60.PageInfo(
    name,
    builder: (data) {
      return const _i39.MyPurchasesProductsScreen();
    },
  );
}

/// generated route for
/// [_i40.MyPurchasesScreen]
class MyPurchasesRoute extends _i60.PageRouteInfo<void> {
  const MyPurchasesRoute({List<_i60.PageRouteInfo>? children})
    : super(MyPurchasesRoute.name, initialChildren: children);

  static const String name = 'MyPurchasesRoute';

  static _i60.PageInfo page = _i60.PageInfo(
    name,
    builder: (data) {
      return const _i40.MyPurchasesScreen();
    },
  );
}

/// generated route for
/// [_i41.MyPurchasesServicesScreen]
class MyPurchasesServicesRoute extends _i60.PageRouteInfo<void> {
  const MyPurchasesServicesRoute({List<_i60.PageRouteInfo>? children})
    : super(MyPurchasesServicesRoute.name, initialChildren: children);

  static const String name = 'MyPurchasesServicesRoute';

  static _i60.PageInfo page = _i60.PageInfo(
    name,
    builder: (data) {
      return const _i41.MyPurchasesServicesScreen();
    },
  );
}

/// generated route for
/// [_i42.MyPurchasesTarifsScreen]
class MyPurchasesTarifsRoute extends _i60.PageRouteInfo<void> {
  const MyPurchasesTarifsRoute({List<_i60.PageRouteInfo>? children})
    : super(MyPurchasesTarifsRoute.name, initialChildren: children);

  static const String name = 'MyPurchasesTarifsRoute';

  static _i60.PageInfo page = _i60.PageInfo(
    name,
    builder: (data) {
      return const _i42.MyPurchasesTarifsScreen();
    },
  );
}

/// generated route for
/// [_i43.MyRankingScreen]
class MyRankingRoute extends _i60.PageRouteInfo<void> {
  const MyRankingRoute({List<_i60.PageRouteInfo>? children})
    : super(MyRankingRoute.name, initialChildren: children);

  static const String name = 'MyRankingRoute';

  static _i60.PageInfo page = _i60.PageInfo(
    name,
    builder: (data) {
      return const _i43.MyRankingScreen();
    },
  );
}

/// generated route for
/// [_i44.NewsGroupInfoScreen]
class NewsGroupInfoRoute extends _i60.PageRouteInfo<NewsGroupInfoRouteArgs> {
  NewsGroupInfoRoute({_i61.Key? key, List<_i60.PageRouteInfo>? children})
    : super(
        NewsGroupInfoRoute.name,
        args: NewsGroupInfoRouteArgs(key: key),
        initialChildren: children,
      );

  static const String name = 'NewsGroupInfoRoute';

  static _i60.PageInfo page = _i60.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<NewsGroupInfoRouteArgs>(
        orElse: () => NewsGroupInfoRouteArgs(),
      );
      return _i44.NewsGroupInfoScreen(
        key: args.key,
        groupId: pathParams.getInt('id'),
      );
    },
  );
}

class NewsGroupInfoRouteArgs {
  const NewsGroupInfoRouteArgs({this.key});

  final _i61.Key? key;

  @override
  String toString() {
    return 'NewsGroupInfoRouteArgs{key: $key}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! NewsGroupInfoRouteArgs) return false;
    return key == other.key;
  }

  @override
  int get hashCode => key.hashCode;
}

/// generated route for
/// [_i45.ProductItemPage]
class ProductItemRoute extends _i60.PageRouteInfo<ProductItemRouteArgs> {
  ProductItemRoute({
    _i61.Key? key,
    required int id,
    List<_i60.PageRouteInfo>? children,
  }) : super(
         ProductItemRoute.name,
         args: ProductItemRouteArgs(key: key, id: id),
         rawPathParams: {'id': id},
         initialChildren: children,
       );

  static const String name = 'ProductItemRoute';

  static _i60.PageInfo page = _i60.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<ProductItemRouteArgs>(
        orElse: () => ProductItemRouteArgs(id: pathParams.getInt('id')),
      );
      return _i45.ProductItemPage(key: args.key, id: args.id);
    },
  );
}

class ProductItemRouteArgs {
  const ProductItemRouteArgs({this.key, required this.id});

  final _i61.Key? key;

  final int id;

  @override
  String toString() {
    return 'ProductItemRouteArgs{key: $key, id: $id}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ProductItemRouteArgs) return false;
    return key == other.key && id == other.id;
  }

  @override
  int get hashCode => key.hashCode ^ id.hashCode;
}

/// generated route for
/// [_i46.ProductScreen]
class ProductRoute extends _i60.PageRouteInfo<ProductRouteArgs> {
  ProductRoute({_i61.Key? key, List<_i60.PageRouteInfo>? children})
    : super(
        ProductRoute.name,
        args: ProductRouteArgs(key: key),
        initialChildren: children,
      );

  static const String name = 'ProductRoute';

  static _i60.PageInfo page = _i60.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<ProductRouteArgs>(
        orElse: () => ProductRouteArgs(),
      );
      return _i46.ProductScreen(key: args.key, id: pathParams.getInt('id'));
    },
  );
}

class ProductRouteArgs {
  const ProductRouteArgs({this.key});

  final _i61.Key? key;

  @override
  String toString() {
    return 'ProductRouteArgs{key: $key}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ProductRouteArgs) return false;
    return key == other.key;
  }

  @override
  int get hashCode => key.hashCode;
}

/// generated route for
/// [_i47.ProductsListScreen]
class ProductsListRoute extends _i60.PageRouteInfo<void> {
  const ProductsListRoute({List<_i60.PageRouteInfo>? children})
    : super(ProductsListRoute.name, initialChildren: children);

  static const String name = 'ProductsListRoute';

  static _i60.PageInfo page = _i60.PageInfo(
    name,
    builder: (data) {
      return const _i47.ProductsListScreen();
    },
  );
}

/// generated route for
/// [_i48.RankingScreen]
class RankingRoute extends _i60.PageRouteInfo<void> {
  const RankingRoute({List<_i60.PageRouteInfo>? children})
    : super(RankingRoute.name, initialChildren: children);

  static const String name = 'RankingRoute';

  static _i60.PageInfo page = _i60.PageInfo(
    name,
    builder: (data) {
      return const _i48.RankingScreen();
    },
  );
}

/// generated route for
/// [_i49.ServicesListScreen]
class ServicesListRoute extends _i60.PageRouteInfo<ServicesListRouteArgs> {
  ServicesListRoute({
    _i61.Key? key,
    int? serviceId,
    List<_i60.PageRouteInfo>? children,
  }) : super(
         ServicesListRoute.name,
         args: ServicesListRouteArgs(key: key, serviceId: serviceId),
         rawPathParams: {'serviceId': serviceId},
         initialChildren: children,
       );

  static const String name = 'ServicesListRoute';

  static _i60.PageInfo page = _i60.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<ServicesListRouteArgs>(
        orElse: () =>
            ServicesListRouteArgs(serviceId: pathParams.optInt('serviceId')),
      );
      return _i49.ServicesListScreen(key: args.key, serviceId: args.serviceId);
    },
  );
}

class ServicesListRouteArgs {
  const ServicesListRouteArgs({this.key, this.serviceId});

  final _i61.Key? key;

  final int? serviceId;

  @override
  String toString() {
    return 'ServicesListRouteArgs{key: $key, serviceId: $serviceId}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ServicesListRouteArgs) return false;
    return key == other.key && serviceId == other.serviceId;
  }

  @override
  int get hashCode => key.hashCode ^ serviceId.hashCode;
}

/// generated route for
/// [_i50.ShopScreen]
class ShopRoute extends _i60.PageRouteInfo<void> {
  const ShopRoute({List<_i60.PageRouteInfo>? children})
    : super(ShopRoute.name, initialChildren: children);

  static const String name = 'ShopRoute';

  static _i60.PageInfo page = _i60.PageInfo(
    name,
    builder: (data) {
      return const _i50.ShopScreen();
    },
  );
}

/// generated route for
/// [_i51.StoryScreen]
class StoryRoute extends _i60.PageRouteInfo<StoryRouteArgs> {
  StoryRoute({
    _i61.Key? key,
    required int initialGroup,
    required List<_i67.ViewStoryModel> groups,
    required String hero,
    List<_i60.PageRouteInfo>? children,
  }) : super(
         StoryRoute.name,
         args: StoryRouteArgs(
           key: key,
           initialGroup: initialGroup,
           groups: groups,
           hero: hero,
         ),
         initialChildren: children,
       );

  static const String name = 'StoryRoute';

  static _i60.PageInfo page = _i60.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<StoryRouteArgs>();
      return _i51.StoryScreen(
        key: args.key,
        initialGroup: args.initialGroup,
        groups: args.groups,
        hero: args.hero,
      );
    },
  );
}

class StoryRouteArgs {
  const StoryRouteArgs({
    this.key,
    required this.initialGroup,
    required this.groups,
    required this.hero,
  });

  final _i61.Key? key;

  final int initialGroup;

  final List<_i67.ViewStoryModel> groups;

  final String hero;

  @override
  String toString() {
    return 'StoryRouteArgs{key: $key, initialGroup: $initialGroup, groups: $groups, hero: $hero}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! StoryRouteArgs) return false;
    return key == other.key &&
        initialGroup == other.initialGroup &&
        const _i68.ListEquality().equals(groups, other.groups) &&
        hero == other.hero;
  }

  @override
  int get hashCode =>
      key.hashCode ^
      initialGroup.hashCode ^
      const _i68.ListEquality().hash(groups) ^
      hero.hashCode;
}

/// generated route for
/// [_i52.TarifsScreen]
class TarifsRoute extends _i60.PageRouteInfo<TarifsRouteArgs> {
  TarifsRoute({_i61.Key? key, int? tarifId, List<_i60.PageRouteInfo>? children})
    : super(
        TarifsRoute.name,
        args: TarifsRouteArgs(key: key, tarifId: tarifId),
        rawPathParams: {'tarifId': tarifId},
        initialChildren: children,
      );

  static const String name = 'TarifsRoute';

  static _i60.PageInfo page = _i60.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<TarifsRouteArgs>(
        orElse: () => TarifsRouteArgs(tarifId: pathParams.optInt('tarifId')),
      );
      return _i52.TarifsScreen(key: args.key, tarifId: args.tarifId);
    },
  );
}

class TarifsRouteArgs {
  const TarifsRouteArgs({this.key, this.tarifId});

  final _i61.Key? key;

  final int? tarifId;

  @override
  String toString() {
    return 'TarifsRouteArgs{key: $key, tarifId: $tarifId}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! TarifsRouteArgs) return false;
    return key == other.key && tarifId == other.tarifId;
  }

  @override
  int get hashCode => key.hashCode ^ tarifId.hashCode;
}

/// generated route for
/// [_i53.TestPageScreen]
class TestRouteRoute extends _i60.PageRouteInfo<TestRouteRouteArgs> {
  TestRouteRoute({
    _i61.Key? key,
    required int relationId,
    required int groupId,
    List<_i60.PageRouteInfo>? children,
  }) : super(
         TestRouteRoute.name,
         args: TestRouteRouteArgs(
           key: key,
           relationId: relationId,
           groupId: groupId,
         ),
         rawPathParams: {'relationId': relationId, 'id': groupId},
         initialChildren: children,
       );

  static const String name = 'TestRouteRoute';

  static _i60.PageInfo page = _i60.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<TestRouteRouteArgs>(
        orElse: () => TestRouteRouteArgs(
          relationId: pathParams.getInt('relationId'),
          groupId: pathParams.getInt('id'),
        ),
      );
      return _i53.TestPageScreen(
        key: args.key,
        relationId: args.relationId,
        groupId: args.groupId,
      );
    },
  );
}

class TestRouteRouteArgs {
  const TestRouteRouteArgs({
    this.key,
    required this.relationId,
    required this.groupId,
  });

  final _i61.Key? key;

  final int relationId;

  final int groupId;

  @override
  String toString() {
    return 'TestRouteRouteArgs{key: $key, relationId: $relationId, groupId: $groupId}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! TestRouteRouteArgs) return false;
    return key == other.key &&
        relationId == other.relationId &&
        groupId == other.groupId;
  }

  @override
  int get hashCode => key.hashCode ^ relationId.hashCode ^ groupId.hashCode;
}

/// generated route for
/// [_i54.TestingCommentScreen]
class TestingCommentRoute extends _i60.PageRouteInfo<TestingCommentRouteArgs> {
  TestingCommentRoute({_i61.Key? key, List<_i60.PageRouteInfo>? children})
    : super(
        TestingCommentRoute.name,
        args: TestingCommentRouteArgs(key: key),
        initialChildren: children,
      );

  static const String name = 'TestingCommentRoute';

  static _i60.PageInfo page = _i60.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<TestingCommentRouteArgs>(
        orElse: () => TestingCommentRouteArgs(),
      );
      return _i54.TestingCommentScreen(
        key: args.key,
        relationId: pathParams.getInt('relationId'),
        groupId: pathParams.getInt('id'),
      );
    },
  );
}

class TestingCommentRouteArgs {
  const TestingCommentRouteArgs({this.key});

  final _i61.Key? key;

  @override
  String toString() {
    return 'TestingCommentRouteArgs{key: $key}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! TestingCommentRouteArgs) return false;
    return key == other.key;
  }

  @override
  int get hashCode => key.hashCode;
}

/// generated route for
/// [_i55.TestingGroupScreen]
class TestingGroupRoute extends _i60.PageRouteInfo<TestingGroupRouteArgs> {
  TestingGroupRoute({_i61.Key? key, List<_i60.PageRouteInfo>? children})
    : super(
        TestingGroupRoute.name,
        args: TestingGroupRouteArgs(key: key),
        initialChildren: children,
      );

  static const String name = 'TestingGroupRoute';

  static _i60.PageInfo page = _i60.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<TestingGroupRouteArgs>(
        orElse: () => TestingGroupRouteArgs(),
      );
      return _i55.TestingGroupScreen(
        key: args.key,
        relationId: pathParams.getInt('relationId'),
        groupId: pathParams.getInt('id'),
      );
    },
  );
}

class TestingGroupRouteArgs {
  const TestingGroupRouteArgs({this.key});

  final _i61.Key? key;

  @override
  String toString() {
    return 'TestingGroupRouteArgs{key: $key}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! TestingGroupRouteArgs) return false;
    return key == other.key;
  }

  @override
  int get hashCode => key.hashCode;
}

/// generated route for
/// [_i56.TransactionViewScreen]
class TransactionViewRoute
    extends _i60.PageRouteInfo<TransactionViewRouteArgs> {
  TransactionViewRoute({
    _i61.Key? key,
    required _i69.TransactionsStudent transaction,
    List<_i60.PageRouteInfo>? children,
  }) : super(
         TransactionViewRoute.name,
         args: TransactionViewRouteArgs(key: key, transaction: transaction),
         initialChildren: children,
       );

  static const String name = 'TransactionViewRoute';

  static _i60.PageInfo page = _i60.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<TransactionViewRouteArgs>();
      return _i56.TransactionViewScreen(
        key: args.key,
        transaction: args.transaction,
      );
    },
  );
}

class TransactionViewRouteArgs {
  const TransactionViewRouteArgs({this.key, required this.transaction});

  final _i61.Key? key;

  final _i69.TransactionsStudent transaction;

  @override
  String toString() {
    return 'TransactionViewRouteArgs{key: $key, transaction: $transaction}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! TransactionViewRouteArgs) return false;
    return key == other.key && transaction == other.transaction;
  }

  @override
  int get hashCode => key.hashCode ^ transaction.hashCode;
}

/// generated route for
/// [_i57.UserScreen]
class UserRoute extends _i60.PageRouteInfo<UserRouteArgs> {
  UserRoute({
    _i61.Key? key,
    required int id,
    List<_i60.PageRouteInfo>? children,
  }) : super(
         UserRoute.name,
         args: UserRouteArgs(key: key, id: id),
         rawPathParams: {'id': id},
         initialChildren: children,
       );

  static const String name = 'UserRoute';

  static _i60.PageInfo page = _i60.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<UserRouteArgs>(
        orElse: () => UserRouteArgs(id: pathParams.getInt('id')),
      );
      return _i57.UserScreen(key: args.key, id: args.id);
    },
  );
}

class UserRouteArgs {
  const UserRouteArgs({this.key, required this.id});

  final _i61.Key? key;

  final int id;

  @override
  String toString() {
    return 'UserRouteArgs{key: $key, id: $id}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! UserRouteArgs) return false;
    return key == other.key && id == other.id;
  }

  @override
  int get hashCode => key.hashCode ^ id.hashCode;
}

/// generated route for
/// [_i58.VideoSlugScreen]
class VideoSlugRoute extends _i60.PageRouteInfo<VideoSlugRouteArgs> {
  VideoSlugRoute({
    _i61.Key? key,
    required String slug,
    List<_i60.PageRouteInfo>? children,
  }) : super(
         VideoSlugRoute.name,
         args: VideoSlugRouteArgs(key: key, slug: slug),
         rawPathParams: {'slug': slug},
         initialChildren: children,
       );

  static const String name = 'VideoSlugRoute';

  static _i60.PageInfo page = _i60.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<VideoSlugRouteArgs>(
        orElse: () => VideoSlugRouteArgs(slug: pathParams.getString('slug')),
      );
      return _i58.VideoSlugScreen(key: args.key, slug: args.slug);
    },
  );
}

class VideoSlugRouteArgs {
  const VideoSlugRouteArgs({this.key, required this.slug});

  final _i61.Key? key;

  final String slug;

  @override
  String toString() {
    return 'VideoSlugRouteArgs{key: $key, slug: $slug}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! VideoSlugRouteArgs) return false;
    return key == other.key && slug == other.slug;
  }

  @override
  int get hashCode => key.hashCode ^ slug.hashCode;
}

/// generated route for
/// [_i59.ViewItemFeadbackScreen]
class ViewItemFeadbackRoute
    extends _i60.PageRouteInfo<ViewItemFeadbackRouteArgs> {
  ViewItemFeadbackRoute({
    _i61.Key? key,
    required int id,
    List<_i60.PageRouteInfo>? children,
  }) : super(
         ViewItemFeadbackRoute.name,
         args: ViewItemFeadbackRouteArgs(key: key, id: id),
         rawPathParams: {'id': id},
         initialChildren: children,
       );

  static const String name = 'ViewItemFeadbackRoute';

  static _i60.PageInfo page = _i60.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<ViewItemFeadbackRouteArgs>(
        orElse: () => ViewItemFeadbackRouteArgs(id: pathParams.getInt('id')),
      );
      return _i59.ViewItemFeadbackScreen(key: args.key, id: args.id);
    },
  );
}

class ViewItemFeadbackRouteArgs {
  const ViewItemFeadbackRouteArgs({this.key, required this.id});

  final _i61.Key? key;

  final int id;

  @override
  String toString() {
    return 'ViewItemFeadbackRouteArgs{key: $key, id: $id}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ViewItemFeadbackRouteArgs) return false;
    return key == other.key && id == other.id;
  }

  @override
  int get hashCode => key.hashCode ^ id.hashCode;
}
