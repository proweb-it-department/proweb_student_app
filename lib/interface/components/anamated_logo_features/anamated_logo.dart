import 'dart:async';

import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:proweb_student_app/interface/components/md3_circule_indicator/md3_circule_indicator.dart';

class AnimatedLogo extends StatefulWidget {
  const AnimatedLogo({super.key});

  @override
  AnimatedLogoState createState() => AnimatedLogoState();
}

class AnimatedLogoState extends State<AnimatedLogo> {
  List<String> currentSymbols = [];
  final List<String> symbolsFirst = ['0', '1', '1', '0', '1', '1'];
  final List<String> symbolsSecond = ['*', 'R', '/', '0', '1', '}'];
  final List<String> symbolsThird = ['<', '1', '#', '&', ';', ')'];
  final List<String> symbolsFinal = ['P', 'R', 'O', 'W', 'E', 'B'];

  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    swapSymbols();
  }

  void change(int num) {
    setState(() {
      currentSymbols[num] = symbolsSecond[num];
    });
  }

  void swapSymbols() {
    Timer(Duration(milliseconds: 200), () {
      setState(() {
        currentSymbols.add(symbolsFirst[0]);
      });
    });

    Timer(Duration(milliseconds: 350), () {
      setState(() {
        currentSymbols.add(symbolsSecond[0]);
      });
    });

    Timer(Duration(milliseconds: 500), () {
      setState(() {
        currentSymbols.add(symbolsThird[0]);
      });
    });

    Timer(Duration(milliseconds: 650), () {
      setState(() {
        currentSymbols[0] = symbolsFirst[1];
        currentSymbols[1] = symbolsThird[0];
        currentSymbols[2] = symbolsThird[3];
      });
    });

    Timer(Duration(milliseconds: 750), () {
      setState(() {
        currentSymbols.add(symbolsThird[4]);
      });
    });

    Timer(Duration(milliseconds: 900), () {
      setState(() {
        currentSymbols.add(symbolsThird[5]);
      });
    });

    Timer(Duration(milliseconds: 1050), () {
      setState(() {
        currentSymbols[0] = symbolsFinal[0];
        currentSymbols.add(symbolsSecond[2]);
      });
    });

    Timer(Duration(milliseconds: 1200), () {
      setState(() {
        currentSymbols[1] = symbolsFinal[1];
      });
    });

    Timer(Duration(milliseconds: 1350), () {
      setState(() {
        currentSymbols[2] = symbolsFinal[2];
      });
    });

    Timer(Duration(milliseconds: 1500), () {
      setState(() {
        currentSymbols[3] = symbolsFinal[3];
      });
    });

    Timer(Duration(milliseconds: 1650), () {
      setState(() {
        currentSymbols[4] = symbolsFinal[4];
      });
    });

    Timer(Duration(milliseconds: 1800), () {
      setState(() {
        currentSymbols[5] = symbolsFinal[5];
      });
    });

    Timer(Duration(milliseconds: 2200), () {
      setState(() {
        isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final double navigationBarHeight = MediaQuery.of(
      context,
    ).viewPadding.bottom;
    return AnnotatedRegion(
      value: FlexColorScheme.themedSystemNavigationBar(
        context,
        systemNavBarStyle: FlexSystemNavBarStyle.transparent,
      ),
      child: Scaffold(
        body: Center(
          child: Text(
            currentSymbols.join(''),
            style: GoogleFonts.roboto(
              fontSize: 50,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        extendBody: true,
        bottomNavigationBar: PreferredSize(
          preferredSize: Size.fromHeight(50 + navigationBarHeight + 10),
          child: SizedBox(
            height: 50 + navigationBarHeight + 10,
            child: Center(
              child: isLoading == false
                  ? Md3CirculeIndicator(size: 45)
                  : Text('© PROWEB. Since 2010'),
            ),
          ),
        ),
      ),
    );
  }
}
