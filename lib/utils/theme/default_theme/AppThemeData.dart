import 'package:flutter/material.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';

class AppThemeData {
  static ThemeData start(BuildContext context, CustomColors color) {
    return ThemeData(
      useMaterial3: true,
      pageTransitionsTheme: const PageTransitionsTheme(
        builders: <TargetPlatform, PageTransitionsBuilder>{
          TargetPlatform.android: PredictiveBackPageTransitionsBuilder(),
          TargetPlatform.iOS: PredictiveBackPageTransitionsBuilder(),
        },
      ),
      checkboxTheme: CheckboxThemeData(
        checkColor: WidgetStateProperty.all<Color>(color.primaryBg),
        side: BorderSide(color: color.primaryTextColor, width: 2),
        fillColor: WidgetStateProperty.resolveWith<Color>((states) {
          if (states.contains(WidgetState.selected)) {
            return color.primaryTextColor;
          }
          return Colors.transparent;
        }),
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: color.primaryBg,
        titleTextStyle: TextStyle(
          color: color.primaryTextColor,
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
        systemOverlayStyle: color.systemOverlayStyle,
        foregroundColor: color.primaryBg,
        surfaceTintColor: color.primaryBg,
        elevation: 0,
      ),
      timePickerTheme: TimePickerThemeData(
        backgroundColor: color.primaryBg,
        hourMinuteColor: color.containerColor,
        hourMinuteTextColor: color.primaryTextColor,
        dayPeriodColor: color.containerColor,
        dayPeriodTextColor: color.primaryTextColor,
        dialHandColor: color.containerColor,
        dialTextColor: color.primaryTextColor,
        dialBackgroundColor: color.additionalTwo,
        cancelButtonStyle: ButtonStyle(
          textStyle: WidgetStatePropertyAll(
            TextStyle(color: color.primaryTextColor),
          ),
        ),
      ),
      chipTheme: ChipThemeData(
        surfaceTintColor: Colors.transparent,
        backgroundColor: color.primaryBg,
        selectedColor: color.containerColor,
        shadowColor: Colors.transparent,
      ),
      expansionTileTheme: ExpansionTileThemeData(
        iconColor: color.primaryTextColor,
        collapsedIconColor: color.primaryTextColor,
        childrenPadding: EdgeInsets.zero,
        backgroundColor: color.containerColor,
        collapsedBackgroundColor: Colors.transparent,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        collapsedShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        textColor: color.primaryTextColor,
        collapsedTextColor: color.primaryTextColor,
      ),
      progressIndicatorTheme: ProgressIndicatorThemeData(
        color: color.primaryTextColor,
        refreshBackgroundColor: color.containerColor,
        strokeCap: StrokeCap.round,
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: color.primaryTextColor,
        extendedTextStyle: TextStyle(color: color.primaryBg),
      ),
      tabBarTheme: TabBarThemeData(
        indicatorSize: TabBarIndicatorSize.label,
        indicatorColor: color.primaryTextColor,
        splashFactory: InkRipple.splashFactory,
        overlayColor: WidgetStateProperty.all<Color>(color.additionalThree),
        labelStyle: TextStyle(
          color: color.primaryTextColor,
          fontWeight: FontWeight.w500,
        ),
        unselectedLabelStyle: TextStyle(color: color.additionalTwo),
      ),
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: color.primaryBg,
        showDragHandle: true,
        constraints: BoxConstraints(
          minWidth: MediaQuery.of(context).size.width,
        ),
      ),
      navigationBarTheme: NavigationBarThemeData(
        backgroundColor: color.primaryBg,
        indicatorColor: color.primaryColor,
        iconTheme: WidgetStateProperty.resolveWith<IconThemeData>((state) {
          if (state.contains(WidgetState.selected)) {
            return IconThemeData(color: color.primaryBg, size: 18);
          }
          return IconThemeData(color: color.primaryTextColor, size: 18);
        }),
        labelTextStyle: WidgetStateProperty.all<TextStyle>(
          TextStyle(color: color.primaryTextColor, fontSize: 12),
        ),
      ),
      iconTheme: IconThemeData(color: color.primaryTextColor),
      scaffoldBackgroundColor: color.primaryBg,
      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          backgroundColor: color.primaryColor,
          textStyle: TextStyle(
            foreground: Paint()..color = color.primaryBg,
            fontSize: 14,
          ),
          overlayColor: color.primaryBg,
          iconColor: color.primaryBg,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: color.primaryColor,
          textStyle: TextStyle(
            foreground: Paint()..color = color.primaryBg,
            fontSize: 14,
          ),
          overlayColor: color.primaryBg,
          iconColor: color.primaryBg,
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderSide: BorderSide(color: color.primaryTextColor),
        ),
        outlineBorder: BorderSide(color: color.primaryTextColor),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: color.errorFill),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: color.primaryTextColor),
        ),
        labelStyle: TextStyle(color: color.primaryTextColorOp),
        floatingLabelStyle: TextStyle(color: color.primaryTextColor),
        focusColor: color.primaryTextColor,
        disabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: color.disabledColor),
        ),
        errorStyle: TextStyle(color: color.errorFill),
        helperStyle: TextStyle(color: color.primaryTextColorOp, fontSize: 13),
      ),
      dialogTheme: DialogThemeData(
        backgroundColor: color.primaryBg,
        titleTextStyle: TextStyle(color: color.primaryTextColor),
        iconColor: color.primaryTextColor,
      ),
      radioTheme: RadioThemeData(
        fillColor: WidgetStateProperty.all<Color>(color.primaryTextColor),
      ),
      dividerTheme: DividerThemeData(color: color.borderColor),
      textSelectionTheme: TextSelectionThemeData(
        cursorColor: color.primaryTextColor,
        selectionHandleColor: color.primaryTextColor,
        selectionColor: color.additionalTwo,
      ),
      primaryColor: color.primaryTextColor,
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          textStyle: TextStyle(
            foreground: Paint()..color = color.primaryTextColor,
            fontSize: 14,
          ),
          foregroundColor: color.primaryTextColorOp,
          overlayColor: color.primaryTextColorOp,
          iconColor: color.primaryTextColor,
          disabledBackgroundColor: color.filledButtonDisableBg,
        ),
      ),
      iconButtonTheme: IconButtonThemeData(
        style: ButtonStyle(
          iconColor: WidgetStateProperty.all<Color>(color.primaryTextColor),
          backgroundColor: WidgetStateProperty.all<Color>(color.containerColor),
          foregroundColor: WidgetStateProperty.all<Color>(
            color.primaryTextColorOp,
          ),
        ),
      ),
      textTheme: TextTheme(
        bodyLarge: TextStyle(color: color.primaryTextColor),
        bodyMedium: TextStyle(color: color.primaryTextColor),
        bodySmall: TextStyle(color: color.primaryTextColor),
        displayLarge: TextStyle(color: color.primaryTextColor),
        displayMedium: TextStyle(color: color.primaryTextColor),
        displaySmall: TextStyle(color: color.primaryTextColor),
        headlineLarge: TextStyle(color: color.primaryTextColor),
        headlineMedium: TextStyle(color: color.primaryTextColor),
        headlineSmall: TextStyle(color: color.primaryTextColor),
        labelLarge: TextStyle(color: color.primaryTextColor),
        labelMedium: TextStyle(color: color.primaryTextColor),
        labelSmall: TextStyle(color: color.primaryTextColor),
        titleLarge: TextStyle(color: color.primaryTextColor),
        titleMedium: TextStyle(color: color.primaryTextColor),
        titleSmall: TextStyle(color: color.primaryTextColor),
      ),
      listTileTheme: ListTileThemeData(
        textColor: color.primaryTextColor,
        iconColor: color.primaryTextColor,
      ),
      extensions: [color],
    );
  }
}
