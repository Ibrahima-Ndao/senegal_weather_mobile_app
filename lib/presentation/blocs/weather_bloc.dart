// presentation/blocs/weather_bloc.dart
import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:senegal_weather_app/domain/entities/weather_entity.dart';
import 'package:senegal_weather_app/domain/repositories/weather_repository.dart';

part 'weather_event.dart';
part 'weather_state.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  final WeatherRepository weatherRepository;

  WeatherBloc({required this.weatherRepository}) : super(WeatherInitial()) {
    on<FetchWeatherEvent>(_onFetchWeather);
  }

  Future<void> _onFetchWeather(
    FetchWeatherEvent event,
    Emitter<WeatherState> emit,
  ) async {
    // Votre implémentation existante
    emit(WeatherLoading());
    try {
      final result = await weatherRepository.getAllRegionsWeather();

      result.fold(
        (failure) => emit(WeatherError(message: failure.message)),
        (weatherList) {
          // Vérifier si toutes les données sont valides
          if (weatherList.isEmpty) {
            emit(WeatherError(message: "Aucune donnée météo disponible"));
          } else {
            emit(WeatherLoaded(regionsWeather: weatherList));
          }
        },
      );
    } catch (e) {
      emit(WeatherError(message: "Erreur inattendue: ${e.toString()}"));
    }
  }
}
