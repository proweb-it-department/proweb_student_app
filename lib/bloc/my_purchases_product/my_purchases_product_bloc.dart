import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:proweb_student_app/api/network/main/get/main.dart';
import 'package:proweb_student_app/models/category_product/category_product.dart';
import 'package:proweb_student_app/models/my_purchases/my_purchases.dart';
import 'package:proweb_student_app/models/response_laze_list.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';

part 'my_purchases_product_event.dart';
part 'my_purchases_product_state.dart';
part 'my_purchases_product_bloc.freezed.dart';

class MyPurchasesProductBloc
    extends Bloc<MyPurchasesProductEvent, MyPurchasesProductState> {
  MyPurchasesProductBloc() : super(_Load()) {
    on<MyPurchasesProductEvent>((event, emit) async {
      started(int? categoryId) async {
        List<CategoryProduct>? categories = state.whenOrNull(
          complited: (categories, mypurchased, load) => categories,
        );
        ResponseLazeList<MyPurchases>? mypurchased = state.whenOrNull(
          complited: (categories, mypurchased, load) => mypurchased,
        );
        emit(
          MyPurchasesProductState.complited(
            categories: categories ?? [],
            products: mypurchased ?? ResponseLazeList(count: 0, list: []),
            load: true,
          ),
        );
        final main = sl<GetResponsesMain>();
        categories ??= await main.productsCategories();
        if (categories == null) {
          categories = categories ?? [];
          mypurchased = mypurchased ?? ResponseLazeList(count: 0, list: []);
          return emit(
            MyPurchasesProductState.complited(
              categories: categories,
              products: mypurchased,
              load: false,
            ),
          );
        }

        mypurchased = await main.myPurchasedProductList(categoryId);
        mypurchased ??= ResponseLazeList(count: 0, list: []);
        return emit(
          MyPurchasesProductState.complited(
            categories: categories,
            products: mypurchased,
            load: false,
          ),
        );
      }

      await event.when(started: started);
    });
  }
}
