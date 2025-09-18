import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:proweb_student_app/api/local_data/local_data.dart';
import 'package:proweb_student_app/interface/components/app_bar/app_bar.dart';
import 'package:proweb_student_app/interface/components/course_avatar/course_avatar.dart';
import 'package:proweb_student_app/interface/components/premium_container/premium_container.dart';
import 'package:proweb_student_app/models/transactions_student/transactions_student.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';

@RoutePage()
class TransactionViewScreen extends StatelessWidget {
  final TransactionsStudent transaction;
  const TransactionViewScreen({super.key, required this.transaction});

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    final bottomPadding = MediaQuery.of(context).viewPadding.bottom;
    String amountFormater = NumberFormat('#,##0', 'ru_RU').format(double.parse(transaction.amount ?? '0'));
    final icon = transaction.studentLesson?.course?.icon;
    final color = transaction.studentLesson?.course?.color;
    return AnnotatedRegion(
      value: FlexColorScheme.themedSystemNavigationBar(context, systemNavBarStyle: FlexSystemNavBarStyle.transparent),
      child: Scaffold(
        appBar: MainAppBar(),
        body: Padding(
          padding: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: bottomPadding + 10),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              color: customColors?.containerColor,
              child: ListView(
                children: [
                  if (transaction.studentLesson != null)
                    ListTile(
                      leading: icon != null && color != null ? CourseAvatar(icon: icon, color: HexColor(color)) : null,
                      title: Text('transactions_balance.payment_for_a_lesson'.tr(), style: TextStyle(color: customColors?.primaryTextColor.withAlpha(150))),
                      subtitle: Text('transactions_balance.group_and_lesson_transactions'.tr(namedArgs: {'groupId': (transaction.studentLesson?.groupId ?? 0).toString(), 'lessonNumber': (transaction.studentLesson?.lessonNumber ?? 0).toString()})),
                      trailing: transaction.canceled == true
                          ? Container(
                              decoration: BoxDecoration(color: customColors?.errorFill, borderRadius: BorderRadius.circular(50)),
                              padding: EdgeInsets.symmetric(horizontal: 6, vertical: 4),
                              child: Text('transactions_balance.canseled_transaction_text'.tr().toUpperCase(), style: TextStyle(color: Colors.white)),
                            )
                          : null,
                    ),
                  if (transaction.studentLesson != null) Divider(height: 1),
                  if (transaction.service != null)
                    ListTile(
                      leading: PremiumContainer(text: 'transactions_balance.service_transaction'.tr()),
                      title: Text('transactions_balance.Payment_for_the_service'.tr(), style: TextStyle(color: customColors?.primaryTextColor.withAlpha(150))),
                      subtitle: Text(transaction.service?.serviceName ?? '- - -'),
                      trailing: transaction.canceled == true
                          ? Container(
                              decoration: BoxDecoration(color: customColors?.errorFill, borderRadius: BorderRadius.circular(50)),
                              padding: EdgeInsets.symmetric(horizontal: 6, vertical: 4),
                              child: Text('transactions_balance.canseled_transaction_text'.tr().toUpperCase(), style: TextStyle(color: Colors.white)),
                            )
                          : null,
                    ),
                  if (transaction.service != null) Divider(height: 1),
                  if (transaction.product != null)
                    ListTile(
                      leading: PremiumContainer(text: 'transactions_balance.product_transaction'.tr()),
                      title: Text('transactions_balance.Payment_for_the_product'.tr(), style: TextStyle(color: customColors?.primaryTextColor.withAlpha(150))),
                      subtitle: Text(transaction.product?.productName ?? '- - -'),
                      trailing: transaction.canceled == true
                          ? Container(
                              decoration: BoxDecoration(color: customColors?.errorFill, borderRadius: BorderRadius.circular(50)),
                              padding: EdgeInsets.symmetric(horizontal: 6, vertical: 4),
                              child: Text('transactions_balance.canseled_transaction_text'.tr().toUpperCase(), style: TextStyle(color: Colors.white)),
                            )
                          : null,
                    ),
                  if (transaction.product != null) Divider(height: 1),
                  if (transaction.package != null)
                    ListTile(
                      leading: PremiumContainer(text: 'transactions_balance.tarif_transaction'.tr()),
                      title: Text('transactions_balance.Payment_for_the_tariff'.tr(), style: TextStyle(color: customColors?.primaryTextColor.withAlpha(150))),
                      subtitle: Text(transaction.package?.packageName ?? '- - -'),
                      trailing: transaction.canceled == true
                          ? Container(
                              decoration: BoxDecoration(color: customColors?.errorFill, borderRadius: BorderRadius.circular(50)),
                              padding: EdgeInsets.symmetric(horizontal: 6, vertical: 4),
                              child: Text('transactions_balance.canseled_transaction_text'.tr().toUpperCase(), style: TextStyle(color: Colors.white)),
                            )
                          : null,
                    ),
                  if (transaction.package != null) Divider(height: 1),
                  if (transaction.transactionId != null)
                    ListTile(
                      title: Text('transactions_balance.Transaction_number'.tr(), style: TextStyle(color: customColors?.primaryTextColor.withAlpha(150))),
                      subtitle: Text('${transaction.transactionId}'),
                    ),
                  if (transaction.transactionId != null) Divider(height: 1),
                  if (transaction.type != null)
                    ListTile(
                      title: Text('transactions_balance.Transaction_type'.tr(), style: TextStyle(color: customColors?.primaryTextColor.withAlpha(150))),
                      subtitle: Text(transaction.type == 'increase' ? 'transactions_balance.Replenishment'.tr() : 'transactions_balance.Write_off'.tr()),
                    ),
                  if (transaction.type != null) Divider(height: 1),
                  if (transaction.balanceType != null)
                    ListTile(
                      title: Text('transactions_balance.Check_transaction'.tr(), style: TextStyle(color: customColors?.primaryTextColor.withAlpha(150))),
                      subtitle: Text(transaction.balanceType == 'main' ? 'transactions_balance.Main_balance'.tr() : 'transactions_balance.Voucher_balance'.tr()),
                    ),
                  if (transaction.balanceType != null) Divider(height: 1),
                  ListTile(
                    title: Text('transactions_balance.Sum'.tr(), style: TextStyle(color: customColors?.primaryTextColor.withAlpha(150))),
                    subtitle: Text(
                      '${transaction.type == 'increase' ? '+' : '-'}${'global_data.sum'.tr(namedArgs: {'money': amountFormater})}',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: transaction.type == 'increase' ? customColors?.successFill : customColors?.errorFill),
                    ),
                  ),
                  Divider(height: 1),
                  if (transaction.canceled == true)
                    ListTile(
                      title: Text('transactions_balance.Transaction_cancelled'.tr(), style: TextStyle(color: customColors?.primaryTextColor)),
                    ),
                  if (transaction.canceled == true) Divider(height: 1),
                  if (transaction.reason == 'return_money_to_user')
                    ListTile(
                      title: Text('transactions_balance.Refund'.tr(), style: TextStyle(color: customColors?.primaryTextColor)),
                    ),
                  if (transaction.reason == 'return_money_to_user') Divider(height: 1),
                  if (transaction.paymentMethod != null)
                    ListTile(
                      title: Text('transactions_balance.Payment_method'.tr(), style: TextStyle(color: customColors?.primaryTextColor.withAlpha(150))),
                      subtitle: Text(transaction.paymentMethod?.name ?? ''),
                    ),
                  if (transaction.paymentMethod != null) Divider(height: 1),
                  if (transaction.createdAt != null)
                    ListTile(
                      title: Text('transactions_balance.date_transaction'.tr(), style: TextStyle(color: customColors?.primaryTextColor.withAlpha(150))),
                      subtitle: Text(sl<LocalData>().getDateString(date: DateTime.parse(transaction.createdAt!))),
                    ),
                  if (transaction.createdAt != null) Divider(height: 1),
                  if (transaction.createdAt != null)
                    ListTile(
                      title: Text('transactions_balance.time_transaction'.tr(), style: TextStyle(color: customColors?.primaryTextColor.withAlpha(150))),
                      subtitle: Text('${sl<LocalData>().nulNumber(DateTime.parse(transaction.createdAt!).hour.toDouble())}:${sl<LocalData>().nulNumber(DateTime.parse(transaction.createdAt!).minute.toDouble())}'),
                    ),
                  if (transaction.createdAt != null) Divider(height: 1),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
