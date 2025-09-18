import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:proweb_student_app/bloc/product_ditail/product_ditail_bloc.dart';
import 'package:proweb_student_app/interface/components/tab_bar_pop_scope/tab_bar_pop_scope.dart';
import 'package:proweb_student_app/router/auto_router.gr.dart';

@RoutePage()
class ProductItemPage extends StatelessWidget {
  final int id;
  const ProductItemPage({super.key, @PathParam('id') required this.id});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          ProductDitailBloc()..add(ProductDitailEvent.started(id: id)),
      child: AutoTabsRouter.tabBar(
        routes: [ProductRoute(), ModuleProductRoute()],
        builder: (context, child, tabController) {
          return ChangeNotifierProvider.value(
            value: tabController,
            child: TabBarPopScope(mainPage: ProductRoute(), child: child),
          );
        },
      ),
    );
  }
}
