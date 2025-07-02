// data/datasources/weather_remote_ds.dart
import 'package:senegal_weather_app/core/utils/api_client.dart';
import 'package:senegal_weather_app/core/utils/weather_mapper.dart';
import 'package:senegal_weather_app/domain/entities/weather_entity.dart';
import 'package:senegal_weather_app/core/constants/region_data.dart';

class WeatherRemoteDataSource {
  final WeatherApiClient _apiClient;
  final Map<String, WeatherEntity> _cache = {};

  WeatherRemoteDataSource({required WeatherApiClient apiClient})
      : _apiClient = apiClient;

  Future<WeatherEntity> getWeatherForRegion(Region region) async {
    final cacheKey = '${region.id}_${DateTime.now().hour}';

    if (_cache.containsKey(cacheKey)) {
      return _cache[cacheKey]!;
    }

    try {
      final response = await _apiClient.getCurrentWeather(
        '8b8a5b6bf1ba447aa8c51706250107', // Remplacez par votre clé réelle
        '${region.latitude},${region.longitude}',
        'fr',
      );

      final weatherEntity = WeatherMapper.toEntity(response, region);
      _cache[cacheKey] = weatherEntity;

      return weatherEntity;
    } catch (e) {
      throw Exception('Erreur API: $e');
    }
  }

  void clearCache() {
    _cache.clear();
  }
}
