import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:proweb_student_app/api/local_data/local_data.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';
part 'response_model.freezed.dart';

@Freezed(genericArgumentFactories: true)
sealed class ApiResponse<T> with _$ApiResponse<T> {
  const factory ApiResponse.results(T results) = ApiResponseData;
  const factory ApiResponse.resultsAsString(String results) =
      ApiResponseStringData;
  const factory ApiResponse.list(List<T> results) = ApiResponseList;
  const factory ApiResponse.lazylist(int count, List<T> results) =
      ApiResponseLazyList;
  const factory ApiResponse.detailAndError(String detail, String errorKey) =
      ApiResponseDetailAndError;

  factory ApiResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Object?) fromJsonT,
  ) {
    final dynamic time = json['time'];
    if (time is double) {
      sl<LocalData>().setTime(time.round());
    }
    if (json['detail'] is String && json['error_key'] is String) {
      return ApiResponse.detailAndError(
        (json['detail'] as String),
        (json['error_key'] as String),
      );
    }
    if (json['results'] is String) {
      return ApiResponse.resultsAsString((json['results'] as String));
    }
    if (json['results'] is List && json['count'] is int) {
      return ApiResponse.lazylist(
        (json['count'] as int),
        (json['results'] as List).map((item) => fromJsonT(item)).toList(),
      );
    }
    if (json['results'] is List) {
      return ApiResponse.list(
        (json['results'] as List).map((item) => fromJsonT(item)).toList(),
      );
    } else if (json['results'] != null) {
      return ApiResponse.results(fromJsonT(json['results']));
    } else {
      throw Exception('Invalid JSON format');
    }
  }
}
