// domain/failures/weather_failure.dart
abstract class WeatherFailure {
  final String message;

  WeatherFailure(this.message);
}

class ApiFailure extends WeatherFailure {
  ApiFailure(String message) : super(message);
}

class CacheFailure extends WeatherFailure {
  CacheFailure(String message) : super(message);
}

class LocationFailure extends WeatherFailure {
  LocationFailure(String message) : super(message);
}
