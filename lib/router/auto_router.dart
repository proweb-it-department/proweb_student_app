import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:proweb_student_app/api/local_data/local_data.dart';
import 'package:proweb_student_app/router/auto_router.gr.dart';
import 'package:proweb_student_app/router/predictive_back_route.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';
import 'package:proweb_student_app/utils/global_context/global_context.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen|Page|Tab,Route')
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => RouteType.material();

  @override
  GlobalKey<NavigatorState> get navigatorKey => _updateContext();

  GlobalKey<NavigatorState> _updateContext() {
    final ctx = super.navigatorKey.currentContext;
    sl<NavigationService>().setContext(ctx);
    return super.navigatorKey;
  }

  @override
  List<AutoRoute> get routes => <AutoRoute>[
    AutoRoute(
      path: '/',
      page: AppRoute.page,
      initial: true,
      children: [
        AutoRoute(
          path: 'home',
          page: HomeRoute.page,
          initial: true,
          guards: [_AuthGuard()],
          children: [
            AutoRoute(
              path: 'main',
              page: HomeMainRoute.page,
              initial: true,
              guards: [_AuthGuard()],
            ),
            AutoRoute(
              path: 'homework',
              page: HomeHomeworkRoute.page,
              initial: false,
              guards: [_AuthGuard()],
            ),
          ],
        ),

        AutoRoute(
          path: 'coworking',
          page: CoworkingRoute.page,
          guards: [_AuthGuard()],
        ),
        AutoRoute(
          path: 'feedback',
          page: FeedbackRoute.page,
          guards: [_AuthGuard()],
        ),
        AutoRoute(
          path: 'rating',
          page: RankingRoute.page,
          guards: [_AuthGuard()],
          maintainState: false,
          children: [
            AutoRoute(
              path: 'my',
              page: MyRankingRoute.page,
              guards: [_AuthGuard()],
              initial: true,
            ),
            AutoRoute(
              path: 'all',
              page: AllRankingRoute.page,
              guards: [_AuthGuard()],
            ),
            AutoRoute(
              path: 'courses',
              page: CourseRankingRoute.page,
              guards: [_AuthGuard()],
            ),
          ],
        ),
        // AutoRoute(
        //   path: 'messenger',
        //   page: MessengerRoute.page,
        //   guards: [_AuthGuard()],
        // ),
        AutoRoute(
          path: 'shop',
          page: ShopRoute.page,
          guards: [_AuthGuard()],
          children: [],
        ),

        AutoRoute(
          path: 'proweb',
          page: ProwebRoute.page,
          guards: [_AuthGuard()],
          children: [
            AutoRoute(
              path: 'course',
              page: ProwebCourseRoute.page,
              guards: [_AuthGuard()],
              initial: true,
            ),
            AutoRoute(
              path: 'branch',
              page: ProwebBranchRoute.page,
              guards: [_AuthGuard()],
            ),
            AutoRoute(
              path: 'master-class',
              page: ProwebMasterClassRoute.page,
              guards: [_AuthGuard()],
            ),
          ],
        ),
      ],
    ),
    CustomRoute(
      path: '/balance',
      page: HomeBalanceRoute.page,
      guards: [_AuthGuard()],
      customRouteBuilder: <T>(context, child, page) {
        return PredictiveBackRouteCustom(child: child, settings: page);
      },
    ),
    CustomRoute(
      path: '/shop/my-purchases',
      page: MyPurchasesRoute.page,
      guards: [_AuthGuard()],
      customRouteBuilder: <T>(context, child, page) {
        return PredictiveBackRouteCustom(child: child, settings: page);
      },
      children: [
        AutoRoute(
          path: 'products',
          page: MyPurchasesProductsRoute.page,
          guards: [_AuthGuard()],
        ),
        AutoRoute(
          path: 'services',
          page: MyPurchasesServicesRoute.page,
          guards: [_AuthGuard()],
        ),
        AutoRoute(
          path: 'packages',
          page: MyPurchasesTarifsRoute.page,
          guards: [_AuthGuard()],
        ),
      ],
    ),
    CustomRoute(
      path: '/shop/market/products',
      page: ProductsListRoute.page,
      guards: [_AuthGuard()],
      children: [],
      customRouteBuilder: <T>(context, child, page) {
        return PredictiveBackRouteCustom(child: child, settings: page);
      },
    ),
    CustomRoute(
      path: '/profile',
      page: ProfileRoute.page,
      customRouteBuilder: <T>(context, child, page) {
        return PredictiveBackRouteCustom(child: child, settings: page);
      },
      guards: [_AuthGuard()],
      children: [],
    ),
    CustomRoute(
      path: '/profile/edit',
      page: ProfileEditedRoute.page,
      guards: [_AuthGuard()],
      customRouteBuilder: <T>(context, child, page) {
        return PredictiveBackRouteCustom(child: child, settings: page);
      },
    ),
    CustomRoute(
      path: '/tg',
      page: TelegramRoute.page,
      guards: [_AuthGuard()],
      children: [],
      customRouteBuilder: <T>(context, child, page) {
        return PredictiveBackRouteCustom(child: child, settings: page);
      },
    ),
    CustomRoute(
      path: '/email',
      page: EmailRoute.page,
      guards: [_AuthGuard()],
      children: [],
      customRouteBuilder: <T>(context, child, page) {
        return PredictiveBackRouteCustom(child: child, settings: page);
      },
    ),
    CustomRoute(
      path: '/my-sessions',
      page: MyActiveSessionsRoute.page,
      guards: [_AuthGuard()],
      children: [],
      customRouteBuilder: <T>(context, child, page) {
        return PredictiveBackRouteCustom(child: child, settings: page);
      },
    ),
    CustomRoute(
      page: PdfViewRoute.page,
      guards: [_AuthGuard()],
      children: [],
      customRouteBuilder: <T>(context, child, page) {
        return PredictiveBackRouteCustom(child: child, settings: page);
      },
    ),
    CustomRoute(
      path: '/savedata',
      page: SavedDataRoute.page,
      guards: [_AuthGuard()],
      children: [],
      customRouteBuilder: <T>(context, child, page) {
        return PredictiveBackRouteCustom(child: child, settings: page);
      },
    ),
    CustomRoute(
      path: '/shop/market/services',
      page: ServicesListRoute.page,
      guards: [_AuthGuard()],
      children: [],
      customRouteBuilder: <T>(context, child, page) {
        return PredictiveBackRouteCustom(child: child, settings: page);
      },
    ),
    CustomRoute(
      path: '/shop/market/packages',
      page: TarifsRoute.page,
      guards: [_AuthGuard()],
      children: [],
      customRouteBuilder: <T>(context, child, page) {
        return PredictiveBackRouteCustom(child: child, settings: page);
      },
    ),
    CustomRoute(
      path: '/shop/product/:id',
      page: ProductItemRoute.page,
      initial: false,
      guards: [_AuthGuard()],
      customRouteBuilder: <T>(context, child, page) {
        return PredictiveBackRouteCustom(child: child, settings: page);
      },
      children: [
        AutoRoute(
          page: ProductRoute.page,
          initial: true,
          guards: [_AuthGuard()],
        ),
        AutoRoute(page: ModuleProductRoute.page, guards: [_AuthGuard()]),
      ],
    ),
    CustomRoute(
      customRouteBuilder: <T>(context, child, page) {
        return PredictiveBackRouteCustom(child: child, settings: page);
      },
      page: ModuleRoute.page,
      guards: [_AuthGuard()],
    ),
    CustomRoute(
      customRouteBuilder: <T>(context, child, page) {
        return PredictiveBackRouteCustom(child: child, settings: page);
      },
      page: MaterialProductRoute.page,
      guards: [_AuthGuard()],
    ),
    CustomRoute(
      customRouteBuilder: <T>(context, child, page) {
        return PredictiveBackRouteCustom(child: child, settings: page);
      },
      page: DownloadsGroupLessonVideoRoute.page,
      guards: [_AuthGuard()],
    ),
    CustomRoute(
      customRouteBuilder: <T>(context, child, page) {
        return PredictiveBackRouteCustom(child: child, settings: page);
      },
      page: DownloadsGroupVideosRoute.page,
      guards: [_AuthGuard()],
    ),
    CustomRoute(
      customRouteBuilder: <T>(context, child, page) {
        return PredictiveBackRouteCustom(child: child, settings: page);
      },
      page: DownloadsExclusiveProductModulesVideoRoute.page,
      guards: [_AuthGuard()],
    ),
    CustomRoute(
      customRouteBuilder: <T>(context, child, page) {
        return PredictiveBackRouteCustom(child: child, settings: page);
      },
      page: DownloadsExclusiveProductModulesMaterialVideoRoute.page,
      guards: [_AuthGuard()],
    ),
    CustomRoute(
      customRouteBuilder: <T>(context, child, page) {
        return PredictiveBackRouteCustom(child: child, settings: page);
      },
      page: DownloadsExclusiveProductModulesMaterialVideosRoute.page,
      guards: [_AuthGuard()],
    ),
    CustomRoute(
      customRouteBuilder: <T>(context, child, page) {
        return PredictiveBackRouteCustom(child: child, settings: page);
      },
      path: '/group/:id',
      page: MainGroupRoute.page,
      guards: [_AuthGuard()],
      children: [
        AutoRoute(
          path: 'group',
          page: GroupGroupInfoRoute.page,
          initial: true,
          guards: [_AuthGuard()],
        ),
        AutoRoute(
          path: 'lessons',
          page: LessonGroupInfoRoute.page,
          guards: [_AuthGuard()],
        ),
        AutoRoute(
          path: 'attendancebook',
          page: AttendanceGroupInfoRoute.page,
          guards: [_AuthGuard()],
        ),
        AutoRoute(
          path: 'homeworks',
          page: HomeworkGroupInfoRoute.page,
          guards: [_AuthGuard()],
        ),
        AutoRoute(
          path: 'gradebook',
          page: GradeBookRoute.page,
          guards: [_AuthGuard()],
        ),
        AutoRoute(
          path: 'group-rating',
          page: GroupRankingRoute.page,
          guards: [_AuthGuard()],
        ),
        AutoRoute(
          path: 'mydiscounts',
          page: BonuceGroupInfoRoute.page,
          guards: [_AuthGuard()],
        ),
        AutoRoute(
          path: 'news',
          page: NewsGroupInfoRoute.page,
          guards: [_AuthGuard()],
        ),
      ],
    ),
    CustomRoute(
      customRouteBuilder: <T>(context, child, page) {
        return PredictiveBackRouteCustom(child: child, settings: page);
      },
      path: '/group/:id/main/:lessonid',
      page: LessonVideoRoute.page,
      guards: [_AuthGuard()],
    ),
    CustomRoute(
      customRouteBuilder: <T>(context, child, page) {
        return PredictiveBackRouteCustom(child: child, settings: page);
      },
      path: '/poll/:nps_id/relation/:relation_id',
      page: NpsRoute.page,
      guards: [_AuthGuard()],
    ),
    CustomRoute(
      customRouteBuilder: <T>(context, child, page) {
        return PredictiveBackRouteCustom(child: child, settings: page);
      },
      path: '/group/:id/homeworks/:relationId',
      page: HomeworkRouteRoute.page,
      guards: [_AuthGuard()],
      children: [
        AutoRoute(
          path: 'about',
          page: HomeworkAboutRoute.page,
          initial: true,
          guards: [_AuthGuard()],
        ),
        AutoRoute(
          path: 'work',
          page: HomeworkStudentWorkRoute.page,
          guards: [_AuthGuard()],
        ),
        AutoRoute(
          path: 'comment',
          page: HomeworkStudentCommentsRoute.page,
          guards: [_AuthGuard()],
        ),
      ],
    ),
    CustomRoute(
      customRouteBuilder: <T>(context, child, page) {
        return PredictiveBackRouteCustom(child: child, settings: page);
      },
      path: '/group/:id/material/:relationId',
      page: MaterialViewRoute.page,
      guards: [_AuthGuard()],
    ),
    CustomRoute(
      customRouteBuilder: <T>(context, child, page) {
        return PredictiveBackRouteCustom(child: child, settings: page);
      },
      path: '/group/:id/test/:relationId',
      page: TestRouteRoute.page,
      guards: [_AuthGuard()],
      children: [
        AutoRoute(
          path: 'test',
          page: TestingGroupRoute.page,
          initial: true,
          guards: [_AuthGuard()],
        ),
        AutoRoute(
          path: 'comment',
          page: TestingCommentRoute.page,
          guards: [_AuthGuard()],
        ),
      ],
    ),
    CustomRoute(
      customRouteBuilder: <T>(context, child, page) {
        return PredictiveBackRouteCustom(child: child, settings: page);
      },
      path: '/download',
      page: DownloadRoute.page,
      guards: [_AuthGuard()],
      children: [
        AutoRoute(
          path: 'videos',
          page: DownloadVideosRoute.page,
          initial: true,
          guards: [_AuthGuard()],
        ),
        AutoRoute(
          path: 'files',
          page: DownloadFilesRoute.page,
          guards: [_AuthGuard()],
        ),
        AutoRoute(
          path: ':slug',
          page: VideoSlugRoute.page,
          guards: [_AuthGuard()],
        ),
      ],
    ),
    CustomRoute(
      customRouteBuilder: <T>(context, child, page) {
        return PredictiveBackRouteCustom(child: child, settings: page);
      },
      path: '/download/:slug',
      page: VideoSlugRoute.page,
      guards: [_AuthGuard()],
    ),

    CustomRoute(
      customRouteBuilder: <T>(context, child, page) {
        return PredictiveBackRouteCustom(child: child, settings: page);
      },
      page: TransactionViewRoute.page,
      guards: [_AuthGuard()],
    ),
    CustomRoute(
      customRouteBuilder: <T>(context, child, page) {
        return PredictiveBackRouteCustom(child: child, settings: page);
      },
      page: CoworkingReserveRoute.page,
      guards: [_AuthGuard()],
    ),
    CustomRoute(
      customRouteBuilder: <T>(context, child, page) {
        return PredictiveBackRouteCustom(child: child, settings: page);
      },
      page: CoworkingSignUpRoute.page,
      guards: [_AuthGuard()],
    ),
    CustomRoute(
      customRouteBuilder: <T>(context, child, page) {
        return PredictiveBackRouteCustom(child: child, settings: page);
      },
      page: CreatedFeadbackRoute.page,
      guards: [_AuthGuard()],
    ),
    CustomRoute(
      customRouteBuilder: <T>(context, child, page) {
        return PredictiveBackRouteCustom(child: child, settings: page);
      },
      path: '/feedback/tickets/:id',
      page: ViewItemFeadbackRoute.page,
      guards: [_AuthGuard()],
    ),
    CustomRoute(
      customRouteBuilder: <T>(context, child, page) {
        return PredictiveBackRouteCustom(child: child, settings: page);
      },
      path: '/user/:id',
      page: UserRoute.page,
      guards: [_AuthGuard()],
    ),
    CustomRoute(
      customRouteBuilder: <T>(context, child, page) {
        return PredictiveBackRouteCustom(child: child, settings: page);
      },
      page: StoryRoute.page,
      fullscreenDialog: true,
      guards: [_AuthGuard()],
    ),
    CustomRoute(
      path: '/events/master-classes/:id',
      customRouteBuilder: <T>(context, child, page) {
        return PredictiveBackRouteCustom(child: child, settings: page);
      },
      page: MasterClassRoute.page,
      fullscreenDialog: true,
      guards: [_AuthGuard()],
    ),
    CustomRoute(
      customRouteBuilder: <T>(context, child, page) {
        return PredictiveBackRouteCustom(child: child, settings: page);
      },
      path: '/courses/:id',
      page: CourseAboutRoute.page,
      guards: [_AuthGuard()],
      children: [
        AutoRoute(
          path: 'about',
          page: CourseMainRouteRoute.page,
          initial: true,
          guards: [_AuthGuard()],
        ),
        AutoRoute(
          path: 'modules',
          page: CourseModulesRoute.page,
          guards: [_AuthGuard()],
        ),
        AutoRoute(
          path: 'ranking',
          page: CourseRankingViewRoute.page,
          guards: [_AuthGuard()],
        ),
      ],
    ),
    AutoRoute(path: '/auth', page: AuthRoute.page),
  ];
}

class _AuthGuard extends AutoRouteGuard {
  @override
  Future<void> onNavigation(
    NavigationResolver resolver,
    StackRouter router,
  ) async {
    final bool hasAuth = sl<LocalData>().hasAuth();
    if (hasAuth) {
      resolver.next();
    } else {
      router.replaceAll([AuthRoute()]);
    }
  }
}
