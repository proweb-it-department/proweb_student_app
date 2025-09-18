import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:proweb_student_app/api/local_data/local_data.dart';
import 'package:proweb_student_app/bloc/balance/balance_bloc.dart';
import 'package:proweb_student_app/bloc/transactions_student/transactions_student_bloc.dart';
import 'package:proweb_student_app/interface/components/course_avatar/course_avatar.dart';
import 'package:proweb_student_app/interface/components/list_tile_builder.dart';
import 'package:proweb_student_app/interface/components/premium_container/premium_container.dart';
import 'package:proweb_student_app/interface/pages/home_screen/tabs/widgets/balance_widget/page_view_balance.dart';
import 'package:proweb_student_app/models/transactions_student/transactions_student.dart';
import 'package:proweb_student_app/router/auto_router.gr.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';

@RoutePage()
class HomeBalanceTab extends StatelessWidget {
  const HomeBalanceTab({super.key});
  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    return MediaQuery.removePadding(
      removeBottom: true,
      context: context,
      child: RefreshIndicator(
        color: customColors?.primaryTextColor,
        backgroundColor: customColors?.containerColor,
        onRefresh: () async {
          final balanceBloc = context.read<BalanceBloc>();
          balanceBloc.add(BalanceEvent.update());
          final transactionsBloc = context.read<TransactionsStudentBloc>();
          transactionsBloc.add(TransactionsStudentEvent.started(offset: 0));
        },
        child: ListViewContent(),
      ),
    );
  }
}

class ListViewContent extends StatefulWidget {
  const ListViewContent({super.key});

  @override
  State<ListViewContent> createState() => _ListViewContentState();
}

class _ListViewContentState extends State<ListViewContent> {
  final ScrollController _scrollController = ScrollController();
  bool _isLoading = false;
  bool _isFinished = false;
  int _lenght = 0;
  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
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
      final bloc = context.read<TransactionsStudentBloc>();
      bloc.add(TransactionsStudentEvent.started(offset: _lenght));
      await bloc.stream.first;
      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    return BlocBuilder<TransactionsStudentBloc, TransactionsStudentState>(
      builder: (context, state) {
        return ListView(
          controller: _scrollController,
          primary: false,

          children: [
            PageViewBalance(),
            SizedBox(height: 10),
            ClipRRect(
              borderRadius: BorderRadius.circular(22),
              child: Container(
                padding: EdgeInsets.only(
                  top: 0,
                  right: 7,
                  left: 7,
                  bottom:
                      kBottomNavigationBarHeight +
                      MediaQuery.of(context).viewPadding.bottom +
                      60,
                ),
                color: customColors?.containerColor,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                        right: 10,
                        top: 10,
                        bottom: 5,
                      ),
                      child: Text(
                        'transactions_balance.Monitoring'.tr(),
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    ...state.when(
                      initial: () => [
                        Center(child: CircularProgressIndicator()),
                      ],
                      lazylist: (list, count) {
                        if (list.length == count) {
                          _isFinished = true;
                        } else {
                          _isFinished = false;
                        }
                        if (list.isNotEmpty) {
                          _lenght = list.length;
                        }
                        return List.generate(list.length, (index) {
                          if (index == (list.length - 1)) {
                            if (_isLoading) {
                              return Padding(
                                padding: EdgeInsets.all(16.0),
                                child: Center(
                                  child: CircularProgressIndicator(),
                                ),
                              );
                            }
                          }
                          final item = list.elementAtOrNull(index);
                          if (item != null) {
                            return TransactionItem(
                              item: item,
                              index: index,
                              length: list.length - 1,
                            );
                          }
                          return SizedBox();
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}

class TransactionItem extends StatelessWidget {
  final TransactionsStudent item;
  final int index;
  final int length;
  const TransactionItem({
    super.key,
    required this.item,
    required this.index,
    required this.length,
  });

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    String amountFormater = NumberFormat(
      '#,##0',
      'ru_RU',
    ).format(double.parse(item.amount ?? '0'));
    Widget leading = CircleAvatar(
      backgroundColor: item.type == 'increase'
          ? customColors?.successFillOp
          : customColors?.errorFillOp,
      radius: 25,
      child: Icon(
        item.type == 'increase' ? Icons.call_made : Icons.call_received,
        color: item.type == 'increase'
            ? customColors?.successFill
            : customColors?.errorFill,
        size: 25,
      ),
    );
    final icon = item.studentLesson?.course?.icon;
    final color = item.studentLesson?.course?.color;

    if (icon != null && color != null) {
      leading = SizedBox(
        width: 50,
        height: 50,
        child: Center(
          child: CourseAvatar(icon: icon, color: HexColor(color), size: 40),
        ),
      );
    } else if (item.product != null) {
      leading = PremiumContainer(
        text:
            '${'transactions_balance.product_transaction'.tr().substring(0, 4)}.',
      );
    } else if (item.service != null) {
      leading = PremiumContainer(
        text:
            '${'transactions_balance.service_transaction'.tr().substring(0, 4)}.',
      );
    } else if (item.package != null) {
      leading = PremiumContainer(
        text:
            '${'transactions_balance.tarif_transaction'.tr().substring(0, 4)}.',
      );
    }
    return Padding(
      padding: EdgeInsetsGeometry.only(bottom: 2),
      child: ListTileBuilder(
        isStart: index == 0,
        isEnd: index == length,
        builder: (shape, contentPadding, isThreeLine) {
          return Material(
            color: Colors.transparent,
            child: ListTile(
              isThreeLine: isThreeLine,
              selectedColor: customColors?.primaryTextColor,
              selectedTileColor: customColors?.primaryBg,
              selected: true,
              shape: shape,
              onTap: () {
                context.router.push(TransactionViewRoute(transaction: item));
              },
              key: ValueKey(item.transactionId),
              contentPadding: contentPadding,
              leading: SizedBox(
                height: 70,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    leading,
                    if (item.canceled == true)
                      Positioned(
                        bottom: 8,
                        right: 0,
                        child: CircleAvatar(
                          radius: 10,
                          backgroundColor: customColors?.errorFill,
                          child: Icon(
                            Icons.close,
                            color: Colors.white,
                            size: 15,
                          ),
                        ),
                      ),
                  ],
                ),
              ),
              title: Text(
                (item.type == 'increase'
                        ? 'transactions_balance.Replenishment'
                        : 'transactions_balance.Write_off')
                    .tr(),
              ),
              subtitle: Text(
                (item.balanceType == 'main'
                        ? 'transactions_balance.main_balance_text'
                        : 'transactions_balance.voucher_balance_text')
                    .tr()
                    .toUpperCase(),
                style: TextStyle(
                  color: customColors?.primaryTextColor.withAlpha(150),
                ),
              ),
              trailing: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisSize: MainAxisSize.min,
                spacing: 5,
                children: [
                  Text(
                    '${item.type == 'increase' ? '+' : '-'}${'global_data.sum'.tr(namedArgs: {'money': amountFormater})}',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: item.type == 'increase'
                          ? customColors?.successFill
                          : customColors?.errorFill,
                    ),
                  ),
                  if (item.createdAt != null)
                    Text(
                      '${sl<LocalData>().getDateString(date: DateTime.parse(item.createdAt!))} | ${sl<LocalData>().nulNumber(DateTime.parse(item.createdAt!).hour.toDouble())}:${sl<LocalData>().nulNumber(DateTime.parse(item.createdAt!).minute.toDouble())}',
                    ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
