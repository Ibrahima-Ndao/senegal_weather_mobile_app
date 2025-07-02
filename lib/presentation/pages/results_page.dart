// results_page.dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:senegal_weather_app/core/constants/app_colors.dart';
import 'package:senegal_weather_app/core/widgets/region_card.dart';
import 'package:senegal_weather_app/domain/entities/weather_entity.dart';
import 'package:senegal_weather_app/presentation/blocs/weather_bloc.dart';
import 'package:senegal_weather_app/presentation/pages/detail_page.dart';
import 'package:senegal_weather_app/presentation/theme/theme_provider.dart';

class ResultsPage extends StatelessWidget {
  final List<WeatherEntity> regionsWeather;

  const ResultsPage({super.key, required this.regionsWeather});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final isDarkMode = themeProvider.isDarkMode;

    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Météo Régionale")),
        backgroundColor: isDarkMode
            ? AppColors.primaryDark
            : Theme.of(context).colorScheme.primary,
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () =>
                context.read<WeatherBloc>().add(FetchWeatherEvent()),
          ),
          IconButton(
            icon: Icon(isDarkMode ? Icons.light_mode : Icons.dark_mode),
            onPressed: () => themeProvider.toggleTheme(),
          ),
        ],
      ),
      body: Container(
        color: isDarkMode ? AppColors.backgroundDark : null,
        child: GridView.builder(
          padding: const EdgeInsets.all(16),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            childAspectRatio: 0.8,
          ),
          itemCount: regionsWeather.length,
          itemBuilder: (context, index) {
            final weather = regionsWeather[index];
            return RegionCard(
              weather: weather,
              isDarkMode: isDarkMode,
              onTap: () => Navigator.push(
                context,
                PageRouteBuilder(
                  transitionDuration: const Duration(milliseconds: 500),
                  pageBuilder: (_, __, ___) => DetailPage(weather: weather),
                  transitionsBuilder: (_, animation, __, child) {
                    return FadeTransition(
                      opacity: animation,
                      child: child,
                    );
                  },
                ),
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: isDarkMode
            ? AppColors.accentDark
            : Theme.of(context).colorScheme.secondary,
        onPressed: () => Navigator.pushReplacementNamed(context, '/loading'),
        child: Icon(
          Icons.replay,
          color: isDarkMode ? Colors.white : Colors.black,
        ),
      ),
    );
  }
}
