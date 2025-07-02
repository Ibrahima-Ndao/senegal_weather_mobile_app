// core/utils/api_client.dart
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:senegal_weather_app/data/models/weather_response.dart';

part 'api_client.g.dart';

@RestApi(baseUrl: "https://api.weatherapi.com/v1/")
abstract class WeatherApiClient {
  factory WeatherApiClient(Dio dio, {String baseUrl}) = _WeatherApiClient;

  @GET("current.json")
  Future<WeatherResponse> getCurrentWeather(
    @Query("key") String apiKey,
    @Query("q") String query,
    @Query("lang") String language,
  );
}
