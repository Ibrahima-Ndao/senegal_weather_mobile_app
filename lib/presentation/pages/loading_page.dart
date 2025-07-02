// loading_page.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:senegal_weather_app/core/constants/app_colors.dart';
import 'package:senegal_weather_app/core/widgets/animated_gauge.dart';
import 'package:senegal_weather_app/presentation/blocs/weather_bloc.dart';
import 'package:senegal_weather_app/presentation/theme/theme_provider.dart';

class LoadingPage extends StatelessWidget {
  const LoadingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final isDarkMode = themeProvider.isDarkMode;

    return Scaffold(
      backgroundColor:
          isDarkMode ? AppColors.backgroundDark : AppColors.backgroundLight,
      body: Center(
        child: BlocListener<WeatherBloc, WeatherState>(
          listener: (context, state) {
            if (state is WeatherLoaded) {
              Navigator.pushReplacementNamed(
                context,
                '/results',
                arguments: state.regionsWeather,
              );
            }
          },
          child: AnimatedWeatherGauge(
            duration: const Duration(seconds: 20),
            isDarkMode: isDarkMode,
            onComplete: () {
              context.read<WeatherBloc>().add(FetchWeatherEvent());
            },
          ),
        ),
      ),
    );
  }
}
