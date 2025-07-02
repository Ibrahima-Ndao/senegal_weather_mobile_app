// main.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:dio/dio.dart';

import 'package:senegal_weather_app/core/utils/api_client.dart';
import 'package:senegal_weather_app/data/datasources/weather_remote_ds.dart';
import 'package:senegal_weather_app/data/repositories/weather_repo_impl.dart';
import 'package:senegal_weather_app/domain/entities/weather_entity.dart';
import 'package:senegal_weather_app/domain/repositories/weather_repository.dart';
import 'package:senegal_weather_app/presentation/blocs/weather_bloc.dart';
import 'package:senegal_weather_app/presentation/pages/home_page.dart';
import 'package:senegal_weather_app/presentation/pages/loading_page.dart';
import 'package:senegal_weather_app/presentation/pages/results_page.dart';
import 'package:senegal_weather_app/presentation/pages/detail_page.dart';
import 'package:senegal_weather_app/presentation/theme/app_theme.dart';
import 'package:senegal_weather_app/presentation/theme/theme_provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeProvider()),

        // Configuration de la chaîne de dépendances
        Provider<Dio>(create: (_) => Dio()),
        Provider<WeatherApiClient>(
          create: (context) => WeatherApiClient(context.read<Dio>()),
        ),
        Provider<WeatherRemoteDataSource>(
          create: (context) => WeatherRemoteDataSource(
            apiClient: context.read<WeatherApiClient>(),
          ),
        ),
        Provider<WeatherRepository>(
          create: (context) => WeatherRepositoryImpl(
            remoteDataSource: context.read<WeatherRemoteDataSource>(),
          ),
        ),
        BlocProvider(
          create: (context) => WeatherBloc(
            weatherRepository: context.read<WeatherRepository>(),
          )..add(FetchWeatherEvent()),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, themeProvider, child) {
        return MaterialApp(
          title: 'Météo Sénégal',
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          themeMode: themeProvider.themeMode,
          initialRoute: '/',
          routes: {
            '/': (context) => const HomePage(),
            '/loading': (context) => const LoadingPage(),
            '/results': (context) => ResultsPage(
                  regionsWeather: ModalRoute.of(context)!.settings.arguments
                      as List<WeatherEntity>,
                ),
          },
          onGenerateRoute: (settings) {
            if (settings.name == '/detail') {
              final weather = settings.arguments as WeatherEntity;
              return MaterialPageRoute(
                builder: (context) => DetailPage(weather: weather),
              );
            }
            return null;
          },
        );
      },
    );
  }
}
