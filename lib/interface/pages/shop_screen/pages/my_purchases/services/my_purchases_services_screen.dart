import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:proweb_student_app/bloc/my_purchases_service/my_purchases_service_bloc.dart';
import 'package:proweb_student_app/interface/components/md3_circule_indicator/md3_circule_indicator.dart';
import 'package:proweb_student_app/interface/components/no_data/no_data.dart';
import 'package:proweb_student_app/interface/pages/shop_screen/pages/services/services_list.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';

@RoutePage()
class MyPurchasesServicesScreen extends StatelessWidget {
  const MyPurchasesServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        final bloc = MyPurchasesServiceBloc();
        bloc.add(
          MyPurchasesServiceEvent.started(
            offset: 0,
            limit: LimitRequest.purchasesService,
          ),
        );
        return bloc;
      },
      child: MyPurchaseServiceList(),
    );
  }
}

class MyPurchaseServiceList extends StatelessWidget {
  const MyPurchaseServiceList({super.key});

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    return ClipRRect(
      borderRadius: BorderRadiusGeometry.only(
        topLeft: Radius.circular(22),
        topRight: Radius.circular(22),
      ),
      child: Container(
        decoration: BoxDecoration(color: customColors?.containerColor),
        child: BlocBuilder<MyPurchasesServiceBloc, MyPurchasesServiceState>(
          builder: (context, state) {
            return state.when(
              load: () {
                return Center(child: Md3CirculeIndicator());
              },
              complited: (services, load) {
                return ListView(
                  padding: EdgeInsets.all(10),
                  children: [
                    if (services.list.isNotEmpty)
                      ...List.generate(services.list.length, (index) {
                        final service = services.list.elementAt(index);
                        return ServiceItem(
                          purchased: service,
                          isStart: index == 0,
                          isEnd: index == (services.list.length - 1),
                        );
                      })
                    else if (!load)
                      NoData(
                        text: 'Дополнительных услуг нет',
                        icon: Icons.work,
                        color: customColors?.primaryBg,
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
