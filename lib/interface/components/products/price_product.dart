import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:proweb_student_app/interface/components/premium_container/premium_container.dart';
import 'package:proweb_student_app/models/products/products.dart';
import 'package:proweb_student_app/utils/enum/base_enum.dart';

class PriceProduct extends StatelessWidget {
  final Products product;
  const PriceProduct({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Ink(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        spacing: 0,
        children: [
          if (product.saleType == ProductSaleType.package ||
              product.saleType == ProductSaleType.packageMoney)
            PremiumContainer(
              text: 'transactions_balance.tarif_transaction'.tr(),
            ),
          if (product.price != null &&
              (product.saleType == ProductSaleType.packageMoney ||
                  product.saleType == ProductSaleType.money))
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 6, vertical: 2),
              child: Text(
                'global_data.sum'.tr(
                  namedArgs: {
                    'money': NumberFormat(
                      '#,##0',
                      'ru_RU',
                    ).format(double.parse(product.price!)),
                  },
                ),
                style: TextStyle(color: Colors.black, fontSize: 12),
              ),
            ),
          if (product.priceCoin != null &&
              product.saleType == ProductSaleType.coin)
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 6, vertical: 2),
              child: Text(
                NumberFormat(
                  '#,##0',
                  'ru_RU',
                ).format(double.parse('${product.priceCoin!}')),
                style: TextStyle(color: Colors.black, fontSize: 12),
              ),
            ),
        ],
      ),
    );
  }
}
