// core/utils/weather_mapper.dart
import 'package:senegal_weather_app/core/constants/region_data.dart';
import 'package:senegal_weather_app/data/models/weather_response.dart';
import 'package:senegal_weather_app/domain/entities/weather_entity.dart';

class WeatherMapper {
  static WeatherEntity toEntity(WeatherResponse response, Region region) {
    return WeatherEntity(
      region: region,
      temperature: response.current.tempC,
      condition: response.current.condition.text,
      iconUrl: 'https:${response.current.condition.icon}',
      humidity: response.current.humidity,
      windSpeed: response.current.windKph,
      lastUpdated: DateTime.parse(response.current.lastUpdated),
    );
  }
}
