import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:proweb_student_app/api/network/main/get/main.dart';
import 'package:proweb_student_app/api/network/main/post/main.dart';
import 'package:proweb_student_app/models/my_purchases/my_purchases.dart';
import 'package:proweb_student_app/models/product_module_access.dart';
import 'package:proweb_student_app/models/products/products.dart';
import 'package:proweb_student_app/models/products_modules/products_modules.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';

part 'product_ditail_event.dart';
part 'product_ditail_state.dart';
part 'product_ditail_bloc.freezed.dart';

class ProductDitailBloc extends Bloc<ProductDitailEvent, ProductDitailState> {
  ProductDitailBloc() : super(_Initial()) {
    on<ProductDitailEvent>((event, emit) async {
      started(int id) async {
        emit(ProductDitailState.load());
        final main = sl<GetResponsesMain>();
        final mypurchased = await main.myPurchasedList();
        final find = mypurchased?.firstWhere(
          (element) => element.product?.id == id,
          orElse: () => MyPurchases(),
        );
        Products? product = find?.product;
        final purchasedId = find?.id;
        if (product != null) {
          product = product.copyWith(purchased: find?.access);
        }
        product ??= await main.productDitail(id);
        if (product == null) return emit(ProductDitailState.error());
        List<ProductsModules>? modules = await main.productModules(id);
        if (modules == null) return emit(ProductDitailState.error());
        List<ProductModuleAccess>? moduleAccess;
        if (purchasedId != null) {
          moduleAccess = await main.productModuleAccess(purchasedId);
          if (moduleAccess != null) {
            modules = modules.map((e) {
              final find = moduleAccess?.firstWhere(
                (element) =>
                    element.moduleId == e.id &&
                    e.id != null &&
                    element.access == true,
                orElse: () => ProductModuleAccess(),
              );
              final isAccess = find != null && find.id != null;
              return e.copyWith(access: isAccess);
            }).toList();
          }
        }

        final modulesSrorted = List.of(modules)
          ..sort((a, b) => (a.position ?? 0) - (b.position ?? 0));
        return emit(
          ProductDitailState.complited(
            product: product,
            productModules: modulesSrorted,
          ),
        );
      }

      buy(int productId) async {
        emit(ProductDitailState.load());
        final mainPost = sl<PostResponsesMain>();
        await mainPost.buyProduct(FormData.fromMap({'product_id': productId}));
        final main = sl<GetResponsesMain>();
        final mypurchased = await main.myPurchasedList();
        final find = mypurchased?.firstWhere(
          (element) => element.product?.id == productId,
          orElse: () => MyPurchases(),
        );
        Products? product = find?.product;
        final purchasedId = find?.id;
        if (product != null) {
          product = product.copyWith(purchased: find?.access);
        }
        product ??= await main.productDitail(productId);
        if (product == null) return emit(ProductDitailState.error());
        List<ProductsModules>? modules = await main.productModules(productId);
        if (modules == null) return emit(ProductDitailState.error());
        List<ProductModuleAccess>? moduleAccess;
        if (purchasedId != null) {
          moduleAccess = await main.productModuleAccess(purchasedId);
          if (moduleAccess != null) {
            modules = modules.map((e) {
              final find = moduleAccess?.firstWhere(
                (element) => element.moduleId == e.id && e.id != null,
                orElse: () => ProductModuleAccess(),
              );
              final isAccess = find != null && find.id != null;
              return e.copyWith(access: isAccess);
            }).toList();
          }
        }

        final modulesSrorted = List.of(modules)
          ..sort((a, b) => (a.position ?? 0) - (b.position ?? 0));
        return emit(
          ProductDitailState.complited(
            product: product,
            productModules: modulesSrorted,
          ),
        );
      }

      await event.when(started: started, buy: buy);
    });
  }
}
