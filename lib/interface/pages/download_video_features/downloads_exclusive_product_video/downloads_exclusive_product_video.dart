import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:proweb_student_app/bloc/downloads_exclusive_product_video/downloads_exclusive_product_video_bloc.dart';
import 'package:proweb_student_app/interface/components/error_load/error_load.dart';
import 'package:proweb_student_app/interface/components/md3_circule_indicator/md3_circule_indicator.dart';
import 'package:proweb_student_app/interface/components/no_data/no_data.dart';
import 'package:proweb_student_app/models/db/db.dart';
import 'package:proweb_student_app/router/auto_router.gr.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';

class DownloadsExclusiveProductVideo extends StatelessWidget {
  const DownloadsExclusiveProductVideo({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        final bloc = DownloadsExclusiveProductVideoBloc();
        bloc.add(DownloadsExclusiveProductVideoEvent.started());
        return bloc;
      },
      child: const DownloadsExclusiveProductVideoBody(),
    );
  }
}

class DownloadsExclusiveProductVideoBody extends StatelessWidget {
  const DownloadsExclusiveProductVideoBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<
      DownloadsExclusiveProductVideoBloc,
      DownloadsExclusiveProductVideoState
    >(
      builder: (context, state) {
        return state.when(
          load: () {
            return Padding(
              padding: const EdgeInsets.all(10),
              child: Center(child: Md3CirculeIndicator()),
            );
          },
          error: () {
            return Padding(
              padding: const EdgeInsets.all(10),
              child: Center(child: ErrorLoad()),
            );
          },
          notFound: () {
            return Padding(
              padding: const EdgeInsets.all(10),
              child: Center(
                child: NoData(
                  text: 'downloads.No_exclusive_products_downloaded'.tr(),
                  icon: Icons.videocam_off,
                ),
              ),
            );
          },
          complited: (products) {
            return GridView(
              padding: EdgeInsets.only(bottom: 10, left: 10, right: 10),
              shrinkWrap: true,
              primary: false,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 3 / 4,
              ),
              children: [
                ...products.map((product) {
                  return ProductItemCardDownload(product: product);
                }),
              ],
            );
          },
        );
      },
    );
  }
}

class ProductItemCardDownload extends StatelessWidget {
  final ExclusiveProductModelData product;
  const ProductItemCardDownload({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    final file = File(product.cover);
    final customColors = Theme.of(context).extension<CustomColors>();
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Material(
        color: customColors?.containerColor,
        child: InkWell(
          onTap: () {
            context.router.push(
              DownloadsExclusiveProductModulesVideoRoute(
                productId: product.productId,
              ),
            );
          },
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: file.existsSync()
                    ? Ink.image(image: Image.file(file).image)
                    : Container(color: customColors?.containerColor),
              ),
              Ink(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: customColors?.borderColors ?? Colors.transparent,
                    width: 2,
                  ),
                ),
                padding: EdgeInsets.all(2),
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
                          Text(
                            product.productName,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                        ],
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
