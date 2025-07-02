import 'package:dartz/dartz.dart';
import 'package:senegal_weather_app/core/constants/region_data.dart';
import 'package:senegal_weather_app/domain/entities/weather_entity.dart';
import 'package:senegal_weather_app/domain/failures/weather_failure.dart';

abstract class WeatherRepository {
  Future<Either<WeatherFailure, WeatherEntity>> getWeatherForRegion(
      Region region);
  Future<Either<WeatherFailure, List<WeatherEntity>>> getAllRegionsWeather();
}
