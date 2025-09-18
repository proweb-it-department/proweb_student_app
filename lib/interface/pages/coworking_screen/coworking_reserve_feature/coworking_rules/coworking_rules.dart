import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:proweb_student_app/bloc/coworking_info/coworking_info_bloc.dart';
import 'package:proweb_student_app/bloc/coworking_list_reserve/coworking_list_reserve_bloc.dart';
import 'package:proweb_student_app/interface/components/error_load/error_load.dart';
import 'package:proweb_student_app/interface/pages/coworking_screen/coworking_reserve_feature/provider/coworking_provider.dart';
import 'package:proweb_student_app/models/coworking_info/coworking_info.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';

class CoworkingRules extends StatefulWidget {
  final CoworkingInfo info;
  const CoworkingRules({super.key, required this.info});

  @override
  State<CoworkingRules> createState() => _CoworkingRulesState();
}

class _CoworkingRulesState extends State<CoworkingRules> {
  final controller = ScrollController();
  bool isFinal = false;

  @override
  void initState() {
    super.initState();
    controller.addListener(_onScroll);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _onScroll();
    });
  }

  void _onScroll() {
    if (controller.hasClients &&
        (controller.position.pixels >=
            controller.position.maxScrollExtent - 70)) {
      if (!isFinal) {
        setState(() {
          isFinal = true;
        });
      }
    } else {
      if (isFinal) {
        setState(() {
          isFinal = false;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    final bloc = context.read<CoworkingListReserveBloc>();
    final bool isRevervation = bloc.state.when(
      initial: () {
        return false;
      },
      list: (count, list, reservate) {
        return list.isNotEmpty;
      },
    );
    // if (isRevervation) {
    //   context.read<CoworkingProvider>().toggleAcquainted();
    // }
    List<Rules>? rules = widget.info.rules;
    if (rules != null) {
      rules = [...rules];
      rules.sort((a, b) {
        return (a.order ?? 0) - (b.order ?? 0);
      });
    }
    if (rules == null) {
      return Center(
        child: ErrorLoad(
          action: FilledButton(
            onPressed: () {
              final bloc = context.read<CoworkingInfoBloc>();
              bloc.add(
                CoworkingInfoEvent.started(
                  languageCode: context.locale.toString(),
                ),
              );
            },
            child: Text('global_data.try_again'.tr()),
          ),
        ),
      );
    }
    return Stack(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'coworing_mobile.coworking_rules'.tr(),
                style: TextStyle(fontSize: 18),
              ),
            ),
            Expanded(
              child: ListView.separated(
                controller: controller,
                padding: EdgeInsets.only(
                  left: 10,
                  right: 10,
                  top: 10,
                  bottom: !isRevervation ? 70 : 10,
                ),
                itemBuilder: (context, index) {
                  final item = rules!.elementAt(index);
                  return Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: customColors?.containerColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      spacing: 10,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          '• ${item.title ?? ''}',
                          style: TextStyle(fontSize: 16),
                        ),
                        Text(
                          item.description ?? '',
                          style: TextStyle(
                            fontSize: 16,
                            color: customColors?.primaryTextColor.withAlpha(
                              150,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return SizedBox(height: 10);
                },
                itemCount: rules.length,
              ),
            ),
          ],
        ),
        if (!isRevervation)
          Positioned(
            left: 0,
            bottom: 0,
            child: Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              height: 69,
              child: AnimatedSwitcher(
                duration: Duration(milliseconds: 200),
                transitionBuilder: (Widget child, Animation<double> animation) {
                  return SlideTransition(
                    position: Tween<Offset>(
                      begin: Offset(0, 2),
                      end: Offset(0, 0),
                    ).animate(animation),
                    child: FadeTransition(
                      alwaysIncludeSemantics: true,
                      opacity: animation,
                      child: child,
                    ),
                  );
                },
                child: isFinal
                    ? Material(
                        key: ValueKey(1),
                        child: ListTile(
                          onTap: () {
                            context
                                .read<CoworkingProvider>()
                                .toggleAcquainted();
                          },
                          tileColor: customColors?.primaryTextColor,
                          title: Text(
                            'coworing_mobile.I_have_read_the_coworking_rules'
                                .tr(),
                            style: TextStyle(color: customColors?.primaryBg),
                          ),
                          leading: Checkbox(
                            value: context
                                .watch<CoworkingProvider>()
                                .isAcquainted,
                            checkColor: customColors?.primaryTextColor,
                            side: BorderSide(
                              color:
                                  customColors?.primaryBg ?? Colors.transparent,
                              width: 2,
                            ),
                            fillColor: WidgetStateProperty.resolveWith<Color>((
                              states,
                            ) {
                              if (states.contains(WidgetState.selected)) {
                                return customColors?.primaryBg ??
                                    Colors.transparent;
                              }
                              return Colors.transparent;
                            }),
                            onChanged: null,
                          ),
                        ),
                      )
                    : GestureDetector(
                        onTap: () {
                          controller.animateTo(
                            controller.position.maxScrollExtent,
                            duration: Duration(milliseconds: 200),
                            curve: Curves.easeInOut,
                          );
                        },
                        child: Container(
                          key: ValueKey(12),
                          padding: EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 6,
                          ),
                          decoration: BoxDecoration(
                            color: customColors?.primaryTextColor,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            spacing: 7,
                            children: [
                              Icon(
                                Icons.keyboard_arrow_down,
                                color: customColors?.primaryBg,
                              ),
                              Text(
                                'coworing_mobile.Down'.tr(),
                                style: TextStyle(
                                  color: customColors?.primaryBg,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
              ),
            ),
          ),
      ],
    );
  }
}
