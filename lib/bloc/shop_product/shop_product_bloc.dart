import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:proweb_student_app/api/network/main/get/main.dart';
import 'package:proweb_student_app/models/category_product/category_product.dart';
import 'package:proweb_student_app/models/my_purchases/my_purchases.dart';
import 'package:proweb_student_app/models/products/products.dart';
import 'package:proweb_student_app/models/response_laze_list.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';

part 'shop_product_event.dart';
part 'shop_product_state.dart';
part 'shop_product_bloc.freezed.dart';

class ShopProductBloc extends Bloc<ShopProductEvent, ShopProductState> {
  ShopProductBloc() : super(_Initial()) {
    on<ShopProductEvent>((event, emit) async {
      load(int offset, int limit, String? language, int? categoryId) async {
        List<CategoryProduct>? categories = state.whenOrNull(
          list: (products, categories, mypurchased, isError, isLoad) =>
              categories,
        );
        ResponseLazeList<Products>? products = state.whenOrNull(
          list: (products, categories, mypurchased, isError, isLoad) =>
              products,
        );
        List<MyPurchases>? mypurchased = state.whenOrNull(
          list: (products, categories, mypurchased, isError, isLoad) =>
              mypurchased,
        );
        if (offset == 0) {
          emit(
            ShopProductState.list(
              products: ResponseLazeList(count: 0, list: []),
              categories: categories ?? [],
              myPurchased: mypurchased,
              isError: false,
              isLoad: true,
            ),
          );
        }
        final main = sl<GetResponsesMain>();
        categories ??= await main.productsCategories();
        if (categories == null) {
          products = ResponseLazeList<Products>(count: 0, list: []);
          categories = categories ?? [];
          mypurchased = mypurchased ?? [];
          return emit(
            ShopProductState.list(
              products: products,
              categories: categories,
              myPurchased: mypurchased,
              isError: true,
              isLoad: false,
            ),
          );
        }
        mypurchased ??= await main.myPurchasedList();
        ResponseLazeList<Products>? productsData = await main.forSaleProduct(
          offset,
          limit,
          language,
          categoryId,
        );
        if (productsData == null) {
          products = ResponseLazeList<Products>(count: 0, list: []);
          categories = categories;
          mypurchased = mypurchased ?? [];
          return emit(
            ShopProductState.list(
              products: products,
              categories: categories,
              myPurchased: mypurchased,
              isError: true,
              isLoad: false,
            ),
          );
        }
        List<Products> list = [];
        if (mypurchased != null) {
          list = productsData.list.map((e) {
            if (mypurchased != null) {
              final find = mypurchased.firstWhere((element) {
                final idPurchased = element.product?.id;
                if (idPurchased == null) return false;
                return e.id == idPurchased;
              }, orElse: () => MyPurchases(id: null));
              if (find.id != null) {
                e = e.copyWith(purchased: true);
              } else {
                e = e.copyWith(purchased: false);
              }
            }
            return e;
          }).toList();
        }
        if (list.isEmpty) {
          list = productsData.list;
        }

        List<Products> listProduct = products?.list ?? [];
        if (offset == 0) {
          listProduct = list;
        } else {
          listProduct.addAll(list);
        }
        return emit(
          ShopProductState.list(
            products: ResponseLazeList(
              count: productsData.count,
              list: listProduct,
            ),
            categories: categories,
            myPurchased: mypurchased,
            isError: false,
            isLoad: false,
          ),
        );
      }

      await event.when(load: load);
    });
  }
}
