import 'package:cached_network_image/cached_network_image.dart';
import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:proweb_student_app/api/local_data/local_data.dart';
import 'package:proweb_student_app/bloc/balance/balance_bloc.dart';
import 'package:proweb_student_app/bloc/payments_provider/payments_provider_bloc.dart';
import 'package:proweb_student_app/interface/components/avatar/avatar.dart';
import 'package:proweb_student_app/interface/components/error_load/error_load.dart';
import 'package:proweb_student_app/interface/components/icon_avatar.dart';
import 'package:proweb_student_app/interface/components/list_tile_builder.dart';
import 'package:proweb_student_app/interface/components/md3_circule_indicator/md3_circule_indicator.dart';
import 'package:proweb_student_app/models/payments_provider/payments_provider.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';

Future<dynamic> openPaymentProviders(BuildContext ctx) {
  final balance = ctx.read<BalanceBloc>();
  final paymentsProvider = ctx.read<PaymentsProviderBloc>();
  return showDialog(
    context: ctx,
    useSafeArea: false,
    builder: (context) {
      return MultiBlocProvider(
        providers: [
          BlocProvider.value(value: balance),
          BlocProvider.value(
            value: paymentsProvider..add(PaymentsProviderEvent.started()),
          ),
        ],
        child: GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: TopUpBalance(),
        ),
      );
    },
  );
}

class TopUpBalance extends StatefulWidget {
  const TopUpBalance({super.key});

  @override
  State<TopUpBalance> createState() => _TopUpBalanceState();
}

class _TopUpBalanceState extends State<TopUpBalance> {
  String? selectProvider;
  PaymentsProviderModel? providerModel;
  int sum = 0;
  late TextEditingController controller;
  bool loadUrl = false;

  @override
  void initState() {
    super.initState();
    controller = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final profile = sl<LocalData>().profile;
    final customColors = Theme.of(context).extension<CustomColors>();
    final balanceState = context.read<BalanceBloc>();
    final paymentsProviderState = context.read<PaymentsProviderBloc>();
    final balance = balanceState.state.when(
      initial: () => null,
      balance: (b) => b,
      error: () => null,
    );
    final paymentsProviders = paymentsProviderState.state.when(
      initial: () => null,
      load: () => null,
      complited: (providers, _) => providers.isEmpty ? null : providers,
    );
    final paymentsProvidersLoad = paymentsProviderState.state.when(
      initial: () => false,
      load: () => true,
      complited: (providers, _) => false,
    );

    paymentsProviderState.stream.listen((event) {
      event.when(
        initial: () {},
        load: () {},
        complited: (providers, url) {
          if (loadUrl && url != null) {
            setState(() {
              loadUrl = false;
            });
            final openUrl = url.url;
            if (openUrl == null) return;
            sl<LocalData>().openLink(url: openUrl);
            Navigator.of(context).pop();
          }
        },
      );
    });
    if (profile == null || balance == null || paymentsProviders == null) {
      Widget? error;
      if (profile == null) {
        error = ErrorLoad();
      }
      if (balance == null) {
        error = ErrorLoad();
      }
      if (paymentsProviders == null && paymentsProvidersLoad == false) {
        error = ErrorLoad(text: 'Доступных способов оплаты нет.');
      } else if (paymentsProviders == null && paymentsProvidersLoad) {
        error = Md3CirculeIndicator();
      }
      return Dialog.fullscreen(
        child: Scaffold(
          appBar: AppBar(
            leading: SizedBox(),
            leadingWidth: 0,
            centerTitle: true,
            actions: [
              IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Icon(Icons.close),
              ),
            ],
            title: Text('Пополнить баланс'),
          ),
          body: Center(child: error),
        ),
      );
    }

    return Dialog.fullscreen(
      child: Scaffold(
        appBar: AppBar(
          leading: SizedBox(),
          leadingWidth: 0,
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(Icons.close),
            ),
          ],
          title: Text('Пополнить баланс'),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTileBuilder(
                isStart: true,
                isEnd: false,
                builder: (shape, contentPadding, isThreeLine) {
                  return ListTile(
                    shape: shape,
                    contentPadding: contentPadding,
                    tileColor: customColors?.containerColor,
                    leading: Avatar(profile: profile),
                    title: Text(sl<LocalData>().nameMyProfile(profile)),
                    subtitle: Text(
                      sl<LocalData>().getContryCode(phone: profile.phone),
                    ),
                  );
                },
              ),
              SizedBox(height: 2),
              ListTileBuilder(
                isStart: false,
                isEnd: true,
                builder: (shape, contentPadding, isThreeLine) {
                  return ListTile(
                    shape: shape,
                    contentPadding: contentPadding,
                    tileColor: customColors?.containerColor,
                    leading: IconAvatar(icon: Icons.wallet, size: 40),
                    title: Text('Баланс'),
                    subtitle: Text(
                      'global_data.sum'.tr(
                        namedArgs: {
                          'money': NumberFormat(
                            '#,##0',
                            'ru_RU',
                          ).format(double.parse(balance.mainBalance)),
                        },
                      ),
                      style: TextStyle(
                        color: double.parse(balance.mainBalance) < 0
                            ? customColors?.errorFill
                            : customColors?.primaryTextColor,
                      ),
                    ),
                  );
                },
              ),
              SizedBox(height: 10),
              if (double.parse(balance.mainBalance) < -1000) ...{
                FilledButton.icon(
                  onPressed: () {
                    controller.text = 'global_data.sum'.tr(
                      namedArgs: {
                        'money': NumberFormat('#,##0', 'ru_RU')
                            .format(double.parse(balance.mainBalance).ceil())
                            .replaceAll('-', ''),
                      },
                    );
                    setState(() {
                      sum = int.parse(
                        '${double.parse(balance.mainBalance).ceil()}'
                            .replaceAll('-', ''),
                      );
                    });
                  },
                  style: FilledButton.styleFrom(
                    backgroundColor: customColors?.warningFillOp,
                    textStyle: TextStyle(color: customColors?.warningFill),
                    iconColor: customColors?.warningFill,
                  ),
                  icon: Icon(Icons.wallet),
                  label: Text(
                    'Погасить задолженность',
                    style: TextStyle(color: customColors?.warningFill),
                  ),
                ),
                SizedBox(height: 10),
              },

              RadioGroup(
                onChanged: (value) {
                  setState(() {
                    selectProvider = value;
                  });
                  final where = paymentsProviders.firstWhere((element) {
                    return element.provider == value;
                  }, orElse: () => PaymentsProviderModel());
                  if (where.provider == null) return;
                  setState(() {
                    providerModel = where;
                  });
                },
                groupValue: selectProvider,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  spacing: 2,
                  children: paymentsProviders.map((payment) {
                    final provider = payment.provider;
                    if (provider == null) return SizedBox();
                    final index = paymentsProviders.indexWhere(
                      (e) => e.provider == provider,
                    );
                    return ListTileBuilder(
                      isStart: index == 0,
                      isEnd: index == (paymentsProviders.length - 1),
                      builder: (shape, contentPadding, isThreeLine) {
                        return RadioListTile(
                          tileColor: customColors?.containerColor,
                          shape: shape,
                          contentPadding: contentPadding,
                          value: provider,
                          controlAffinity: ListTileControlAffinity.trailing,
                          title: Text(payment.name ?? '- - -'),
                          subtitle: Text('услуга ${payment.percent}%'),
                          secondary: payment.icon != null
                              ? CachedNetworkImage(
                                  imageUrl: payment.icon!,
                                  width: 40,
                                )
                              : null,
                        );
                      },
                    );
                  }).toList(),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: controller,
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  final sumInput =
                      int.tryParse(value.replaceAll(RegExp(r'\D'), '')) ?? 0;
                  setState(() {
                    sum = sumInput;
                  });
                },
                inputFormatters: [AmountInputFormatter(maxAmount: 99_999_999)],
                decoration: const InputDecoration(labelText: 'Введите сумму'),
              ),
              SizedBox(height: 10),

              if (sum >= 1000 && providerModel != null) ...{
                Divider(),
                Row(
                  spacing: 10,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Способ оплаты'),
                    Row(
                      spacing: 5,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('${providerModel?.name}'.toUpperCase()),
                        if (providerModel?.icon != null)
                          CachedNetworkImage(
                            imageUrl: providerModel!.icon!,
                            width: 30,
                            height: 30,
                          ),
                      ],
                    ),
                  ],
                ),
                Row(
                  spacing: 10,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Сумма пополнения'),
                    Text(
                      'global_data.sum'.tr(
                        namedArgs: {
                          'money': NumberFormat('#,##0', 'ru_RU').format(sum),
                        },
                      ),
                      style: TextStyle(color: customColors?.primaryTextColor),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  spacing: 10,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('услуга ${providerModel?.percent}%'),
                    Text(
                      'global_data.sum'.tr(
                        namedArgs: {
                          'money': NumberFormat('#,##0', 'ru_RU').format(
                            double.parse(
                              '${sum / 100 * (providerModel?.percent ?? 0)}',
                            ),
                          ),
                        },
                      ),
                      style: TextStyle(color: customColors?.primaryTextColor),
                    ),
                  ],
                ),
                SizedBox(height: 5),
                Divider(),
                Row(
                  spacing: 10,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('К оплате'),
                    Text(
                      'global_data.sum'.tr(
                        namedArgs: {
                          'money': NumberFormat('#,##0', 'ru_RU').format(
                            double.parse(
                              '${sum + (sum / 100 * (providerModel?.percent ?? 0))}',
                            ),
                          ),
                        },
                      ),
                      style: TextStyle(
                        color: customColors?.primaryTextColor,
                        fontSize: 22,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                if (loadUrl == false)
                  FilledButton.icon(
                    onPressed: () async {
                      final transactionParam = profile.phone;
                      final amount = sum;
                      if (amount < 1000) return;
                      final provider = providerModel?.provider;
                      if (provider == null) return;
                      final language = context.locale;
                      final form = FormData.fromMap({
                        "amount": amount,
                        "transaction_param": transactionParam,
                        "language": language,
                        "provider": provider,
                      });
                      paymentsProviderState.add(
                        PaymentsProviderEvent.generateURL(form: form),
                      );
                      setState(() {
                        loadUrl = true;
                      });
                      final returned = await paymentsProviderState.stream.first;
                      setState(() {
                        loadUrl = false;
                      });
                      final dataUrl = returned.when(
                        initial: () => null,
                        load: () => null,
                        complited: (_, url) => url,
                      );
                      if (dataUrl == null) return;
                      final url = dataUrl.url;
                      if (url == null) return;
                      await sl<LocalData>().openLink(url: url);
                    },
                    style: FilledButton.styleFrom(
                      backgroundColor: customColors?.containerColor,
                      iconColor: customColors?.primaryTextColor,
                      textStyle: TextStyle(
                        color: customColors?.primaryTextColor,
                      ),
                    ),
                    label: Text(
                      'Прейти к оплате',
                      style: TextStyle(color: customColors?.primaryTextColor),
                    ),
                    icon: Icon(Icons.wallet),
                  )
                else
                  Md3CirculeIndicator(size: 40),
              } else
                Center(
                  child: Text(
                    'Минимальная сумма пополнения - 1 000 сум.\nВведите сумму для продолжения.',
                    textAlign: TextAlign.center,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class AmountInputFormatter extends TextInputFormatter {
  AmountInputFormatter({required this.maxAmount});

  final int maxAmount;

  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    String digits = newValue.text.replaceAll(RegExp(r'\D'), '');

    if (digits.isEmpty) {
      return const TextEditingValue(text: '');
    }

    if (digits.length > 1 && digits.startsWith('0')) {
      digits = '0';
    }

    final value = int.tryParse(digits) ?? 0;

    if (value > maxAmount) {
      return oldValue;
    }

    // Форматирование с пробелами
    final buffer = StringBuffer();
    for (int i = 0; i < digits.length; i++) {
      final reverseIndex = digits.length - i;
      buffer.write(digits[i]);
      if (reverseIndex > 1 && reverseIndex % 3 == 1) {
        buffer.write(' ');
      }
    }

    final formatted = buffer.toString();

    return TextEditingValue(
      text: 'global_data.sum'.tr(namedArgs: {'money': formatted}),
      selection: TextSelection.collapsed(offset: formatted.length),
    );
  }
}
