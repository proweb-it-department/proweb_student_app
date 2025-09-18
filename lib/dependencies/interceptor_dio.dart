import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:proweb_student_app/models/db/cache_database.dart';

class DriftCacheInterceptor extends Interceptor {
  final CacheDatabase db;

  DriftCacheInterceptor(this.db);

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final useCache = options.extra['cache'] == true;
    if (useCache) {
      final cached = await db.getCache(options.uri.toString());
      if (cached != null) {
        return handler.resolve(
          Response(
            requestOptions: options,
            data: jsonDecode(cached.response),
            statusCode: 200,
          ),
        );
      }
    }
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) async {
    final useCache = response.requestOptions.extra['cache'] == true;
    if (useCache && response.data is Map<String, dynamic>) {
      final duration =
          response.requestOptions.extra['cacheDuration'] as Duration? ??
          Duration(minutes: 5);
      await db.setCache(
        response.requestOptions.uri.toString(),
        response.data as Map<String, dynamic>,
        duration,
      );
    }
    super.onResponse(response, handler);
  }
}
