import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:proweb_student_app/bloc/coworking_info/coworking_info_bloc.dart';
import 'package:proweb_student_app/bloc/coworking_list_reserve/coworking_list_reserve_bloc.dart';
import 'package:proweb_student_app/interface/pages/coworking_screen/coworking_reserve_feature/coworking_reserve_body/coworking_reserve_body.dart';
import 'package:proweb_student_app/interface/pages/coworking_screen/coworking_reserve_feature/provider/coworking_provider.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';

@RoutePage()
class CoworkingReserveScreen extends StatelessWidget {
  final CoworkingListReserveBloc bloc;
  const CoworkingReserveScreen({super.key, required this.bloc});

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    final lang = context.locale.toString();
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              CoworkingInfoBloc()
                ..add(CoworkingInfoEvent.started(languageCode: lang)),
        ),
        BlocProvider.value(value: bloc),
      ],
      child: AnnotatedRegion(
        value: FlexColorScheme.themedSystemNavigationBar(
          context,
          systemNavBarStyle: FlexSystemNavBarStyle.transparent,
        ),
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: customColors?.primaryBg.withAlpha(200),
            title: AutoSizeText(
              'coworing_mobile.sign_up_for_a_coworking_space'.tr(),
              maxLines: 1,
              minFontSize: 16,
              maxFontSize: 22,
              overflow: TextOverflow.ellipsis,
              style: GoogleFonts.roboto(),
            ),
            elevation: 0,
            shape: Border(
              bottom: BorderSide(
                color: customColors?.primaryBgBorder ?? Colors.black,
                width: 1,
              ),
            ),
          ),
          body: ChangeNotifierProvider(
            create: (context) => CoworkingProvider(),
            child: CoworkingReserveBody(),
          ),
        ),
      ),
    );
  }
}

class DayModelCoworking {
  final String date;
  final bool isActive;

  DayModelCoworking({required this.date, required this.isActive});
}
