// domain/entities/weather_entity.dart
import 'package:senegal_weather_app/core/constants/region_data.dart';

class WeatherEntity {
  final Region region;
  final double temperature;
  final String condition;
  final String iconUrl;
  final int humidity;
  final double windSpeed;
  final DateTime lastUpdated;

  WeatherEntity({
    required this.region,
    required this.temperature,
    required this.condition,
    required this.iconUrl,
    required this.humidity,
    required this.windSpeed,
    required this.lastUpdated,
  });
}
