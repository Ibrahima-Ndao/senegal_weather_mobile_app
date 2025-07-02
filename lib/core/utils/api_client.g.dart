// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_client.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

class _WeatherApiClient implements WeatherApiClient {
  _WeatherApiClient(
    this._dio, {
    this.baseUrl,
  }) {
    baseUrl ??= 'https://api.weatherapi.com/v1/';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<WeatherResponse> getCurrentWeather(
    apiKey,
    query,
    language,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'key': apiKey,
      r'q': query,
      r'lang': language,
    };
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<WeatherResponse>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              'current.json',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = WeatherResponse.fromJson(_result.data!);
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
