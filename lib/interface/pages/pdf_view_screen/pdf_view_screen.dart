import 'dart:typed_data';

import 'package:auto_route/auto_route.dart';
import 'package:dio/dio.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:proweb_student_app/interface/components/md3_circule_indicator/md3_circule_indicator.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

@RoutePage()
class PdfViewScreen extends StatelessWidget {
  final String title;
  final String url;
  const PdfViewScreen({super.key, required this.title, required this.url});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: FlexColorScheme.themedSystemNavigationBar(
        context,
        systemNavBarStyle: FlexSystemNavBarStyle.transparent,
      ),
      child: Scaffold(
        appBar: AppBar(title: Text(title)),
        body: FutureBuilder<Uint8List>(
          future: loadOfferPdf(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: Md3CirculeIndicator());
            }

            if (snapshot.hasError || !snapshot.hasData) {
              return const Center(child: Text('Не удалось загрузить документ'));
            }

            return SfPdfViewer.memory(snapshot.data!);
          },
        ),
      ),
    );
  }

  Future<Uint8List> loadOfferPdf() async {
    final dio = sl<Dio>();

    final response = await dio.get<List<int>>(
      url,
      options: Options(
        responseType: ResponseType.bytes,
        followRedirects: true,
        receiveTimeout: const Duration(seconds: 30),
      ),
    );

    return Uint8List.fromList(response.data!);
  }
}
