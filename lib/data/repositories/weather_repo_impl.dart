import 'package:dartz/dartz.dart';
import 'package:senegal_weather_app/core/constants/region_data.dart';
import 'package:senegal_weather_app/data/datasources/weather_remote_ds.dart';
import 'package:senegal_weather_app/domain/entities/weather_entity.dart';
import 'package:senegal_weather_app/domain/failures/weather_failure.dart';
import 'package:senegal_weather_app/domain/repositories/weather_repository.dart';

class WeatherRepositoryImpl implements WeatherRepository {
  final WeatherRemoteDataSource remoteDataSource;

  WeatherRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<WeatherFailure, WeatherEntity>> getWeatherForRegion(
      Region region) async {
    try {
      final weather = await remoteDataSource.getWeatherForRegion(region);
      return Right(weather);
    } catch (e) {
      return Left(ApiFailure('Failed to get weather: $e'));
    }
  }

  @override
  Future<Either<WeatherFailure, List<WeatherEntity>>>
      getAllRegionsWeather() async {
    try {
      final List<WeatherEntity> results = [];

      for (final region in senegalRegions) {
        final result = await getWeatherForRegion(region);
        result.fold((failure) => null, (weather) => results.add(weather));
      }

      results.sort((a, b) => a.region.name.compareTo(b.region.name));
      return Right(results);
    } catch (e) {
      return Left(ApiFailure('Failed to load all regions: $e'));
    }
  }
}
