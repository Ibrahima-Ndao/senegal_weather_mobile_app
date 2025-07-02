// presentation/pages/home_page.dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:senegal_weather_app/core/constants/app_colors.dart';
import 'package:senegal_weather_app/core/constants/app_images.dart';
import 'package:senegal_weather_app/presentation/theme/theme_provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 16),
            decoration: BoxDecoration(
              color: themeProvider.isDarkMode
                  ? Colors.white.withOpacity(0.1)
                  : Colors.black.withOpacity(0.1),
              borderRadius: BorderRadius.circular(50),
            ),
            child: IconButton(
              icon: Icon(
                themeProvider.isDarkMode ? Icons.light_mode : Icons.dark_mode,
                color: themeProvider.isDarkMode ? Colors.yellow : Colors.white,
              ),
              onPressed: () => themeProvider.toggleTheme(),
            ),
          ),
        ],
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: themeProvider.isDarkMode
                ? [
                    AppColors.senegalGreen.withOpacity(0.3),
                    AppColors.backgroundDark,
                    AppColors.senegalRed.withOpacity(0.2),
                  ]
                : [
                    AppColors.senegalGreen.withOpacity(0.8),
                    AppColors.senegalYellow.withOpacity(0.6),
                    AppColors.backgroundLight,
                  ],
          ),
        ),
        child: Stack(
          children: [
            // Contenu principal
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 40),

                    // En-tête avec drapeau
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                blurRadius: 10,
                                offset: const Offset(0, 4),
                              ),
                            ],
                          ),
                          child: Image.asset(
                            AppImages.senegalFlag,
                            width: 60,
                            height: 40,
                          ),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "SÉNÉGAL",
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: themeProvider.isDarkMode
                                      ? Colors.white
                                      : AppColors.senegalGreen,
                                  letterSpacing: 2,
                                ),
                              ),
                              Text(
                                "Prévisions météorologiques",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: themeProvider.isDarkMode
                                      ? Colors.white70
                                      : AppColors.senegalGreen.withOpacity(0.8),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),

                    const Spacer(),

                    // Titre principal
                    Center(
                      child: Column(
                        children: [
                          // Icône météo animée
                          Container(
                            width: 120,
                            height: 120,
                            decoration: BoxDecoration(
                              color: themeProvider.isDarkMode
                                  ? AppColors.accentDark.withOpacity(0.2)
                                  : AppColors.senegalYellow.withOpacity(0.3),
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: (themeProvider.isDarkMode
                                          ? AppColors.accentDark
                                          : AppColors.senegalYellow)
                                      .withOpacity(0.4),
                                  blurRadius: 20,
                                  spreadRadius: 5,
                                ),
                              ],
                            ),
                            child: Icon(
                              Icons.wb_sunny_rounded,
                              size: 60,
                              color: themeProvider.isDarkMode
                                  ? AppColors.senegalYellow
                                  : AppColors.senegalRed,
                            ),
                          ),

                          const SizedBox(height: 32),

                          Text(
                            "Météo Sénégal",
                            style: TextStyle(
                              fontSize: 36,
                              fontWeight: FontWeight.bold,
                              color: themeProvider.isDarkMode
                                  ? Colors.white
                                  : AppColors.senegalGreen,
                              shadows: [
                                Shadow(
                                  blurRadius: 12.0,
                                  color: themeProvider.isDarkMode
                                      ? Colors.black.withOpacity(0.8)
                                      : Colors.white.withOpacity(0.8),
                                  offset: const Offset(0, 4),
                                ),
                              ],
                            ),
                            textAlign: TextAlign.center,
                          ),

                          const SizedBox(height: 12),

                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 24, vertical: 12),
                            decoration: BoxDecoration(
                              color: themeProvider.isDarkMode
                                  ? Colors.white.withOpacity(0.1)
                                  : Colors.white.withOpacity(0.8),
                              borderRadius: BorderRadius.circular(25),
                              border: Border.all(
                                color: themeProvider.isDarkMode
                                    ? Colors.white.withOpacity(0.2)
                                    : AppColors.senegalGreen.withOpacity(0.3),
                                width: 1,
                              ),
                            ),
                            child: Text(
                              "5 Villes • Prévisions en temps réel",
                              style: TextStyle(
                                fontSize: 16,
                                color: themeProvider.isDarkMode
                                    ? Colors.white
                                    : AppColors.senegalGreen,
                                fontWeight: FontWeight.w600,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),

                    const Spacer(),

                    // Bouton d'action
                    Center(
                      child: Container(
                        width: double.infinity,
                        height: 60,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: themeProvider.isDarkMode
                                ? [
                                    AppColors.accentDark,
                                    AppColors.senegalYellow,
                                  ]
                                : [
                                    AppColors.senegalYellow,
                                    AppColors.senegalRed,
                                  ],
                          ),
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [
                            BoxShadow(
                              color: (themeProvider.isDarkMode
                                      ? AppColors.accentDark
                                      : AppColors.senegalYellow)
                                  .withOpacity(0.4),
                              blurRadius: 15,
                              offset: const Offset(0, 8),
                            ),
                          ],
                        ),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            shadowColor: Colors.transparent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          onPressed: () =>
                              Navigator.pushNamed(context, '/loading'),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.explore_rounded,
                                color: themeProvider.isDarkMode
                                    ? Colors.white
                                    : Colors.black,
                                size: 24,
                              ),
                              const SizedBox(width: 12),
                              Text(
                                "Découvrir la météo",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: themeProvider.isDarkMode
                                      ? Colors.white
                                      : Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 20),

                    // Indicateurs des villes
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _buildCityIndicator("Dakar", themeProvider),
                        _buildCityIndicator("Thiès", themeProvider),
                        _buildCityIndicator("Kaolack", themeProvider),
                        _buildCityIndicator("Saint-Louis", themeProvider),
                        _buildCityIndicator("Ziguinchor", themeProvider),
                      ],
                    ),

                    const SizedBox(height: 32),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCityIndicator(String cityName, ThemeProvider themeProvider) {
    return Column(
      children: [
        Container(
          width: 8,
          height: 8,
          decoration: BoxDecoration(
            color: themeProvider.isDarkMode
                ? AppColors.senegalYellow
                : AppColors.senegalRed,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: (themeProvider.isDarkMode
                        ? AppColors.senegalYellow
                        : AppColors.senegalRed)
                    .withOpacity(0.6),
                blurRadius: 4,
                spreadRadius: 1,
              ),
            ],
          ),
        ),
        const SizedBox(height: 4),
        Text(
          cityName,
          style: TextStyle(
            fontSize: 10,
            color: themeProvider.isDarkMode
                ? Colors.white70
                : AppColors.senegalGreen.withOpacity(0.8),
            fontWeight: FontWeight.w500,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
