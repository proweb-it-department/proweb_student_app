import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:proweb_student_app/bloc/my_purchases_tarif/my_purchases_tarif_bloc.dart';
import 'package:proweb_student_app/interface/pages/shop_screen/pages/tarif/tarifs_screen.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';

@RoutePage()
class MyPurchasesTarifsScreen extends StatelessWidget {
  const MyPurchasesTarifsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        final bloc = MyPurchasesTarifBloc();
        bloc.add(
          MyPurchasesTarifEvent.started(
            offset: 0,
            limit: LimitRequest.purchasesTarif,
          ),
        );
        return bloc;
      },
      child: MyPurchasesTarifBody(),
    );
  }
}

class MyPurchasesTarifBody extends StatelessWidget {
  const MyPurchasesTarifBody({super.key});

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    final bottom = MediaQuery.of(context).viewPadding.bottom;
    return ClipRRect(
      borderRadius: BorderRadiusGeometry.only(
        topLeft: Radius.circular(22),
        topRight: Radius.circular(22),
      ),
      child: Container(
        color: customColors?.containerColor,
        child: BlocBuilder<MyPurchasesTarifBloc, MyPurchasesTarifState>(
          builder: (context, state) {
            return state.when(
              load: () {
                return Center(child: CircularProgressIndicator());
              },
              complited: (purchases, load) {
                return ListView(
                  padding: EdgeInsets.only(
                    top: 10,
                    right: 10,
                    left: 10,
                    bottom: bottom + 10,
                  ),
                  scrollDirection: Axis.horizontal,
                  children: [
                    ...List.generate(purchases.list.length, (index) {
                      final purchase = purchases.list.elementAt(index);
                      return Padding(
                        padding: EdgeInsetsGeometry.only(right: 10),
                        child: TarifItem(purchased: purchase),
                      );
                    }),
                    if (load)
                      SizedBox(
                        width: MediaQuery.of(context).size.width * .9,
                        child: Center(child: CircularProgressIndicator()),
                      ),
                  ],
                );
              },
            );
          },
        ),
      ),
    );
  }
}
