import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:proweb_student_app/api/language/language.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';

class LogoAuthView extends StatelessWidget {
  const LogoAuthView({super.key});

  @override
  Widget build(BuildContext context) {
    final LocalizationService serviceLocal = sl<LocalizationService>();
    final list = serviceLocal.loadloadCachedLangList();
    final customColor = Theme.of(context).extension<CustomColors>();

    return Center(
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Positioned(
            right: 0,
            child: list.length > 1
                ? DropdownButton(
                    icon: Icon(Icons.keyboard_arrow_down),
                    onChanged: (value) {
                      if (value != null) context.setLocale(Locale(value));
                    },
                    dropdownColor: customColor?.containerColor,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    elevation: 16,
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    underline: SizedBox(),
                    isDense: true,
                    value: context.locale.toString(),
                    items: List.generate(list.length, (index) {
                      return DropdownMenuItem<String>(
                        value: list[index].shortName,
                        child: Text(list[index].name ?? '', style: TextStyle(color: customColor?.primaryTextColor)),
                      );
                    }),
                  )
                : SizedBox(),
          ),
          Center(
            child: Text('PROWEB', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
          ),
        ],
      ),
    );
  }
}
