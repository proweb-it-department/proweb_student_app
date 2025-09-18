import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:proweb_student_app/api/local_data/local_data.dart';
import 'package:proweb_student_app/interface/components/products/category_product_view.dart';
import 'package:proweb_student_app/interface/components/products/price_product.dart';
import 'package:proweb_student_app/models/products/products.dart';
import 'package:proweb_student_app/router/auto_router.gr.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';

class ProductItemCard extends StatelessWidget {
  final Products product;
  const ProductItemCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    if (product.hoverCover != null) {
      sl<LocalData>().cacheImageWithCachedNetworkImage(product.hoverCover!);
    }
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Material(
        color: customColors?.containerColor,
        child: InkWell(
          onTap: () {
            context.router.push(ProductItemRoute(id: product.id ?? 0));
          },
          child: Stack(
            children: [
              Ink.image(
                image: CachedNetworkImageProvider(product.cover!),
                fit: BoxFit.cover,
              ),
              Ink(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Ink(
                      width: double.infinity,
                      padding: EdgeInsets.only(
                        top: 10,
                        left: 10,
                        right: 10,
                        bottom: 20,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(13),
                          topRight: Radius.circular(13),
                        ),
                        gradient: LinearGradient(
                          colors: [
                            Colors.black.withAlpha(200),
                            Colors.black.withAlpha(0),
                          ],
                          begin: AlignmentGeometry.topCenter,
                          end: AlignmentGeometry.bottomCenter,
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        spacing: 15,
                        children: [
                          CategoryProductView(
                            color: product.category?.color,
                            name: product.category?.name,
                          ),
                          Text(
                            product.name ?? '- - -',
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    if (product.purchased != true)
                      Ink(
                        width: double.infinity,
                        padding: EdgeInsets.only(
                          top: 10,
                          left: 10,
                          right: 10,
                          bottom: 10,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(13),
                            bottomRight: Radius.circular(13),
                          ),
                          gradient: LinearGradient(
                            colors: [
                              Colors.black.withAlpha(0),
                              Colors.black.withAlpha(200),
                            ],
                            begin: AlignmentGeometry.topCenter,
                            end: AlignmentGeometry.bottomCenter,
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          spacing: 15,
                          children: [PriceProduct(product: product)],
                        ),
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
