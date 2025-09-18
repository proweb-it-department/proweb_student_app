import 'package:flutter/material.dart';
import 'package:proweb_student_app/interface/components/pagination_page_view/pagination_page_view.dart';
import 'package:proweb_student_app/interface/pages/home_screen/tabs/widgets/balance_widget/balance_widget.dart';
import 'package:proweb_student_app/interface/pages/home_screen/tabs/widgets/balance_widget/extra_balance_widget.dart';

class PageViewBalance extends StatefulWidget {
  const PageViewBalance({super.key});

  @override
  State<PageViewBalance> createState() => _PageViewBalanceState();
}

class _PageViewBalanceState extends State<PageViewBalance> {
  int activePage = 0;
  final PageController controller = PageController();

  setPage(int currentPage) {
    setState(() {
      activePage = currentPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      spacing: 10,
      children: [
        AspectRatio(
          aspectRatio: 16 / 11,
          child: PageView(controller: controller, physics: BouncingScrollPhysics(), onPageChanged: setPage, children: [BalanceWidgetInPage(), ExtraBalanceWidget()]),
        ),
        PaginationPageView(controller: controller, activePage: activePage, length: 2),
      ],
    );
  }
}
