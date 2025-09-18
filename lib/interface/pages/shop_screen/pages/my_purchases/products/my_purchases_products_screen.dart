import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:proweb_student_app/bloc/my_purchases_product/my_purchases_product_bloc.dart';
import 'package:proweb_student_app/interface/components/no_data/no_data.dart';
import 'package:proweb_student_app/interface/components/products/chip_categories.dart';
import 'package:proweb_student_app/interface/components/products/product_item_card.dart';

@RoutePage()
class MyPurchasesProductsScreen extends StatelessWidget {
  const MyPurchasesProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        final bloc = MyPurchasesProductBloc();
        bloc.add(MyPurchasesProductEvent.started());
        return bloc;
      },
      child: MyPurchasesProductsScafold(),
    );
  }
}

class MyPurchasesProductsScafold extends StatefulWidget {
  const MyPurchasesProductsScafold({super.key});

  @override
  State<MyPurchasesProductsScafold> createState() =>
      _MyPurchasesProductsScafoldState();
}

class _MyPurchasesProductsScafoldState
    extends State<MyPurchasesProductsScafold> {
  int categoryId = 0;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MyPurchasesProductBloc, MyPurchasesProductState>(
      builder: (context, state) {
        return state.when(
          load: () => Center(child: CircularProgressIndicator()),
          complited: (categories, products, load) {
            return ListView(
              children: [
                SizedBox(
                  height: 60,
                  width: MediaQuery.of(context).size.width,
                  child: ChipCategories(
                    disabled: load,
                    callback: (categoryIdSelect) {
                      setState(() {
                        categoryId = categoryIdSelect;
                      });
                      final bloc = context.read<MyPurchasesProductBloc>();
                      bloc.add(
                        MyPurchasesProductEvent.started(
                          categoryId: categoryId == 0 ? null : categoryId,
                        ),
                      );
                    },
                    categories: categories,
                    categoryId: categoryId,
                  ),
                ),
                if (products.list.isNotEmpty)
                  GridView(
                    padding: EdgeInsets.all(10),
                    shrinkWrap: true,
                    primary: false,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                          childAspectRatio: 3 / 4,
                        ),
                    children: [
                      ...products.list.map((product) {
                        return ProductItemCard(product: product.product!);
                      }),
                    ],
                  )
                else if (!load)
                  NoData(
                    text: 'Эксклюзивных продуктов у Вас нет',
                    icon: Icons.play_arrow_rounded,
                  ),
              ],
            );
          },
        );
      },
    );
  }
}
