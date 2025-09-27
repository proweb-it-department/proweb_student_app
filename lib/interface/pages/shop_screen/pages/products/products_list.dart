import 'package:auto_route/annotations.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:proweb_student_app/bloc/shop_product/shop_product_bloc.dart';
import 'package:proweb_student_app/interface/components/app_bar/app_bar.dart';
import 'package:proweb_student_app/interface/components/md3_circule_indicator/md3_circule_indicator.dart';
import 'package:proweb_student_app/interface/components/no_data/no_data.dart';
import 'package:proweb_student_app/interface/components/products/chip_categories.dart';
import 'package:proweb_student_app/interface/components/products/product_item_card.dart';
import 'package:proweb_student_app/interface/components/products/segment_language_product.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';

@RoutePage()
class ProductsListScreen extends StatelessWidget {
  const ProductsListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final language = context.locale.languageCode;
    return BlocProvider<ShopProductBloc>(
      create: (context) => ShopProductBloc()
        ..add(
          ShopProductEvent.load(
            offset: 0,
            limit: LimitRequest.products,
            language: language,
          ),
        ),
      child: ProductsList(language: language),
    );
  }
}

class ProductsList extends StatelessWidget {
  final String language;
  const ProductsList({super.key, required this.language});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: FlexColorScheme.themedSystemNavigationBar(
        context,
        systemNavBarStyle: FlexSystemNavBarStyle.transparent,
      ),
      child: Scaffold(
        appBar: MainAppBar(isBorder: false),
        body: ProductsListBody(language: language),
      ),
    );
  }
}

class ProductsListBody extends StatefulWidget {
  final String language;
  const ProductsListBody({super.key, required this.language});

  @override
  State<ProductsListBody> createState() => _ProductsListBodyState();
}

class _ProductsListBodyState extends State<ProductsListBody> {
  final ScrollController _scrollController = ScrollController();
  bool _isLoading = false;
  bool _isFinished = false;
  int _lenght = 0;
  int categoryId = 0;
  late String _language;
  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
    _language = widget.language;
  }

  void _onScroll() {
    if (_scrollController.position.pixels ==
            _scrollController.position.maxScrollExtent &&
        !_isLoading) {
      _loadMoreItems();
    }
  }

  Future<void> _loadMoreItems() async {
    if (!_isFinished) {
      setState(() {
        _isLoading = true;
      });
      final bloc = context.read<ShopProductBloc>();
      bloc.add(
        ShopProductEvent.load(offset: _lenght, limit: LimitRequest.products),
      );
      await bloc.stream.first;
      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ShopProductBloc, ShopProductState>(
      builder: (context, state) {
        return state.when(
          initial: () => Center(child: Md3CirculeIndicator()),
          list: (products, categories, myPurchased, isError, isLoad) {
            if (products.list.length == products.count) {
              _isFinished = true;
            } else {
              _isFinished = false;
            }
            if (products.list.isNotEmpty) {
              _lenght = products.list.length;
            }
            return ListView(
              controller: _scrollController,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SegmentLanguageProduct(
                    disabled: isLoad,
                    language: _language,
                    callback: (lang) {
                      setState(() {
                        _language = lang;
                      });
                      setState(() {
                        final bloc = context.read<ShopProductBloc>();
                        bloc.add(
                          ShopProductEvent.load(
                            offset: 0,
                            limit: LimitRequest.products,
                            language: _language,
                            categoryId: categoryId == 0 ? null : categoryId,
                          ),
                        );
                      });
                    },
                  ),
                ),
                SizedBox(
                  height: 60,
                  width: MediaQuery.of(context).size.width,
                  child: ChipCategories(
                    disabled: isLoad,
                    callback: (categoryIdSelect) {
                      setState(() {
                        categoryId = categoryIdSelect;
                      });
                      setState(() {
                        final bloc = context.read<ShopProductBloc>();
                        bloc.add(
                          ShopProductEvent.load(
                            offset: 0,
                            limit: LimitRequest.products,
                            language: _language,
                            categoryId: categoryId == 0 ? null : categoryId,
                          ),
                        );
                      });
                    },
                    categories: categories,
                    categoryId: categoryId,
                  ),
                ),
                GridView(
                  padding: EdgeInsets.all(10),
                  shrinkWrap: true,
                  primary: false,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 3 / 4,
                  ),
                  children: [
                    ...products.list.map((product) {
                      return ProductItemCard(product: product);
                    }),
                  ],
                ),
                if (_isLoading || isLoad)
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Center(child: Md3CirculeIndicator()),
                  ),
                if (!isLoad && products.list.isEmpty)
                  NoData(text: 'shop_app.No_products'.tr(), icon: Icons.shop),
              ],
            );
          },
        );
      },
    );
  }
}
