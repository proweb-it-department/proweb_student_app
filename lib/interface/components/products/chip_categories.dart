import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:proweb_student_app/models/category_product/category_product.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';

class ChipCategories extends StatelessWidget {
  final List<CategoryProduct> categories;
  final Function(int categoryId) callback;
  final int categoryId;
  final bool disabled;
  const ChipCategories({
    super.key,
    required this.categories,
    required this.callback,
    required this.categoryId,
    required this.disabled,
  });

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    return ListView(
      padding: EdgeInsets.all(10),
      scrollDirection: Axis.horizontal,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 7),
          child: ChoiceChip(
            label: Text('shop_app.Full_list'.tr()),
            selected: categoryId == 0,
            avatar: categoryId == 0
                ? null
                : Icon(
                    Icons.check_box_outline_blank,
                    color: customColors?.primaryTextColor.withAlpha(100),
                  ),
            surfaceTintColor: customColors?.primaryBg,
            shadowColor: Colors.transparent,
            selectedShadowColor: Colors.transparent,
            disabledColor: customColors?.primaryBg,
            chipAnimationStyle: null,
            showCheckmark: true,
            backgroundColor: customColors?.primaryBg,
            selectedColor: customColors?.containerColor,
            labelStyle: TextStyle(color: customColors?.primaryTextColor),
            iconTheme: IconThemeData(color: customColors?.primaryTextColor),
            checkmarkColor: customColors?.primaryTextColor,
            onSelected: disabled
                ? null
                : (value) {
                    if (value) {
                      callback(0);
                    }
                  },
          ),
        ),

        ...categories.map((e) {
          return Padding(
            padding: const EdgeInsets.only(right: 7),
            child: ChoiceChip(
              label: Text(e.name ?? '- - -'),
              selected: categoryId == e.id,
              disabledColor: customColors?.primaryBg,
              surfaceTintColor: customColors?.primaryBg,
              shadowColor: Colors.transparent,
              showCheckmark: true,
              backgroundColor: customColors?.primaryBg,
              selectedColor: customColors?.containerColor,
              avatar: categoryId == e.id
                  ? null
                  : Icon(
                      Icons.check_box_outline_blank,
                      color: customColors?.primaryTextColor.withAlpha(100),
                    ),
              labelStyle: TextStyle(color: customColors?.primaryTextColor),
              iconTheme: IconThemeData(color: customColors?.primaryTextColor),
              checkmarkColor: customColors?.primaryTextColor,
              onSelected: disabled
                  ? null
                  : (value) {
                      if (value) {
                        callback(e.id ?? 0);
                      }
                    },
            ),
          );
        }),
      ],
    );
  }
}
