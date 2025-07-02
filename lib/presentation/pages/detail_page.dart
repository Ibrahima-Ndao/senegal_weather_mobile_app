// detail_page.dart
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:senegal_weather_app/core/constants/app_colors.dart';
import 'package:senegal_weather_app/core/constants/region_data.dart';
import 'package:senegal_weather_app/domain/entities/weather_entity.dart';
import 'package:senegal_weather_app/presentation/theme/theme_provider.dart';

class DetailPage extends StatelessWidget {
  final WeatherEntity weather;

  const DetailPage({super.key, required this.weather});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final isDarkMode = themeProvider.isDarkMode;

    return Scaffold(
      appBar: AppBar(
        title: Text(weather.region.name),
        backgroundColor:
            isDarkMode ? AppColors.primaryDark : AppColors.senegalGreen,
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            icon: Icon(isDarkMode ? Icons.light_mode : Icons.dark_mode),
            onPressed: () => themeProvider.toggleTheme(),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Section météo
            Container(
              padding: const EdgeInsets.all(20),
              color: isDarkMode
                  ? Colors.grey[900]!.withOpacity(0.5)
                  : Theme.of(context).colorScheme.primary.withOpacity(0.1),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Text(
                            '${weather.temperature.toStringAsFixed(1)}°C',
                            style: TextStyle(
                              fontSize: 48,
                              fontWeight: FontWeight.bold,
                              color: isDarkMode ? Colors.white : Colors.black,
                            ),
                          ),
                          Text(
                            weather.condition,
                            style: TextStyle(
                              fontSize: 20,
                              color:
                                  isDarkMode ? Colors.white70 : Colors.black54,
                            ),
                          ),
                        ],
                      ),
                      Image.network(
                        weather.iconUrl,
                        width: 100,
                        height: 100,
                        errorBuilder: (_, __, ___) => Icon(
                          Icons.cloud,
                          size: 60,
                          color: isDarkMode ? Colors.white : Colors.black,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildDetailItem(
                          Icons.water_drop, '${weather.humidity}%', isDarkMode),
                      _buildDetailItem(
                          Icons.air, '${weather.windSpeed} km/h', isDarkMode),
                      _buildDetailItem(
                        Icons.access_time,
                        DateFormat('HH:mm').format(weather.lastUpdated),
                        isDarkMode,
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // Section carte avec Flutter Map
            Container(
              height: 300,
              decoration: BoxDecoration(
                border: Border.all(
                  color: isDarkMode ? Colors.grey[700]! : Colors.grey[300]!,
                  width: 1,
                ),
              ),
              child: FlutterMap(
                options: MapOptions(
                  initialCenter: LatLng(
                    weather.region.latitude,
                    weather.region.longitude,
                  ),
                  initialZoom: 8.0,
                  minZoom: 5.0,
                  maxZoom: 15.0,
                  interactionOptions: const InteractionOptions(
                    flags: InteractiveFlag.all,
                  ),
                ),
                children: [
                  // Couche de tuiles (tiles)
                  TileLayer(
                    urlTemplate: isDarkMode
                        ? 'https://tiles.stadiamaps.com/tiles/alidade_smooth_dark/{z}/{x}/{y}{r}.png'
                        : 'https://tiles.stadiamaps.com/tiles/alidade_smooth/{z}/{x}/{y}{r}.png',
                    userAgentPackageName: 'com.example.senegal_weather_app',
                    maxZoom: 20,
                  ),

                  // Couche de marqueurs
                  MarkerLayer(
                    markers: [
                      Marker(
                        point: LatLng(
                          weather.region.latitude,
                          weather.region.longitude,
                        ),
                        width: 60,
                        height: 60,
                        child: Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8,
                                vertical: 4,
                              ),
                              decoration: BoxDecoration(
                                color: isDarkMode
                                    ? AppColors.accentDark
                                    : AppColors.senegalYellow,
                                borderRadius: BorderRadius.circular(12),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.3),
                                    blurRadius: 4,
                                    offset: const Offset(0, 2),
                                  ),
                                ],
                              ),
                              child: Text(
                                weather.region.name,
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color:
                                      isDarkMode ? Colors.white : Colors.black,
                                ),
                              ),
                            ),
                            const SizedBox(height: 4),
                            Icon(
                              Icons.location_on,
                              size: 30,
                              color: isDarkMode
                                  ? AppColors.senegalRed
                                  : AppColors.senegalGreen,
                              shadows: [
                                Shadow(
                                  color: Colors.black.withOpacity(0.5),
                                  blurRadius: 2,
                                  offset: const Offset(0, 1),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  // Couche de cercle pour mettre en évidence la zone
                  CircleLayer(
                    circles: [
                      CircleMarker(
                        point: LatLng(
                          weather.region.latitude,
                          weather.region.longitude,
                        ),
                        radius: 15000, // 15km de rayon
                        useRadiusInMeter: true,
                        color: (isDarkMode
                                ? AppColors.accentDark
                                : AppColors.senegalGreen)
                            .withOpacity(0.2),
                        borderColor: isDarkMode
                            ? AppColors.accentDark
                            : AppColors.senegalGreen,
                        borderStrokeWidth: 2,
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // Contrôles de la carte
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              color: isDarkMode
                  ? Colors.grey[900]!.withOpacity(0.3)
                  : Colors.grey[100],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.info_outline,
                    size: 16,
                    color: isDarkMode ? Colors.white70 : Colors.black54,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    'Pincer pour zoomer • Glisser pour déplacer',
                    style: TextStyle(
                      fontSize: 12,
                      color: isDarkMode ? Colors.white70 : Colors.black54,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ],
              ),
            ),

            // Section informations
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.location_city,
                        color: isDarkMode
                            ? AppColors.accentDark
                            : AppColors.senegalGreen,
                        size: 24,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        'À propos de ${weather.region.name}',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: isDarkMode ? Colors.white : Colors.black,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: isDarkMode
                          ? Colors.grey[900]!.withOpacity(0.3)
                          : Colors.grey[50],
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color:
                            isDarkMode ? Colors.grey[700]! : Colors.grey[200]!,
                        width: 1,
                      ),
                    ),
                    child: Text(
                      _getRegionDescription(weather.region),
                      style: TextStyle(
                        fontSize: 16,
                        height: 1.5,
                        color: isDarkMode ? Colors.white70 : Colors.black87,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),

                  // Informations géographiques
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: isDarkMode
                          ? AppColors.accentDark.withOpacity(0.1)
                          : AppColors.senegalGreen.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: isDarkMode
                            ? AppColors.accentDark.withOpacity(0.3)
                            : AppColors.senegalGreen.withOpacity(0.3),
                        width: 1,
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Coordonnées géographiques',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: isDarkMode
                                ? AppColors.accentDark
                                : AppColors.senegalGreen,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Row(
                          children: [
                            Icon(
                              Icons.my_location,
                              size: 16,
                              color:
                                  isDarkMode ? Colors.white70 : Colors.black54,
                            ),
                            const SizedBox(width: 8),
                            Text(
                              'Latitude: ${weather.region.latitude.toStringAsFixed(4)}°',
                              style: TextStyle(
                                fontSize: 14,
                                color: isDarkMode
                                    ? Colors.white70
                                    : Colors.black54,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 4),
                        Row(
                          children: [
                            Icon(
                              Icons.my_location,
                              size: 16,
                              color:
                                  isDarkMode ? Colors.white70 : Colors.black54,
                            ),
                            const SizedBox(width: 8),
                            Text(
                              'Longitude: ${weather.region.longitude.toStringAsFixed(4)}°',
                              style: TextStyle(
                                fontSize: 14,
                                color: isDarkMode
                                    ? Colors.white70
                                    : Colors.black54,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDetailItem(IconData icon, String text, bool isDarkMode) {
    return Column(
      children: [
        Icon(
          icon,
          size: 30,
          color: isDarkMode ? AppColors.accentDark : AppColors.senegalGreen,
        ),
        const SizedBox(height: 5),
        Text(
          text,
          style: TextStyle(
            fontSize: 16,
            color: isDarkMode ? Colors.white70 : Colors.black54,
          ),
        ),
      ],
    );
  }

  String _getRegionDescription(Region region) {
    switch (region.name) {
      case 'Dakar':
        return 'Dakar, la capitale du Sénégal, est une ville portuaire dynamique située sur la côte atlantique. Elle est réputée pour son patrimoine culturel, ses marchés animés et son rôle économique majeur.';
      case 'Thiès':
        return "Thiès est connue pour son artisanat, notamment ses tapisseries, ainsi que pour son rôle historique dans le chemin de fer sénégalais. C'est une ville industrielle et agricole proche de Dakar.";
      case 'Saint-Louis':
        return "Saint-Louis, ancienne capitale coloniale, est classée au patrimoine mondial de l'UNESCO pour son architecture coloniale. Elle est située entre le fleuve Sénégal et l'océan Atlantique.";
      case 'Kaolack':
        return "Kaolack est un important centre commercial du centre du pays, connu pour la transformation de l'arachide, ses marchés et son activité portuaire sur le fleuve Saloum.";
      case 'Ziguinchor':
        return 'Ziguinchor est la principale ville de la Casamance. Riche en végétation et en cultures, elle est appréciée pour sa diversité ethnique, sa gastronomie et son potentiel touristique.';
      case 'Louga':
        return 'Louga est une région pastorale située au nord-ouest du Sénégal. Elle est connue pour son élevage, ses traditions religieuses et ses activités agricoles.';
      case 'Fatick':
        return "Fatick est une région culturelle importante pour le peuple sérère. Elle est marquée par des traditions anciennes, la pêche, et l'agriculture notamment autour du delta du Saloum.";
      case 'Diourbel':
        return "Diourbel est célèbre pour la ville sainte de Touba, cœur de la confrérie mouride. Elle est aussi une région agricole, notamment dans la culture de l'arachide.";
      case 'Tambacounda':
        return 'Tambacounda est la plus vaste région du Sénégal. Elle se distingue par ses parcs nationaux, comme Niokolo-Koba, et ses ressources naturelles.';
      case 'Kédougou':
        return 'Kédougou, au sud-est du pays, est une région montagneuse riche en biodiversité. Elle est aussi connue pour ses ressources minières et ses communautés rurales traditionnelles.';
      case 'Kaffrine':
        return "Kaffrine, jeune région issue du découpage administratif, est principalement rurale, avec une agriculture basée sur les céréales et l'élevage.";
      case 'Kolda':
        return "Kolda est une région verte au sud du pays, où l'agriculture et l'élevage jouent un rôle central. Elle est peuplée de plusieurs groupes ethniques dont les Peuls et les Mandingues.";
      case 'Sédhiou':
        return 'Sédhiou est située en Basse-Casamance. Elle se caractérise par ses traditions culturelles fortes, sa diversité ethnique et une économie agricole.';
      case 'Matam':
        return 'Matam, région sahélienne du nord-est, est connue pour ses cultures de contre-saison et son attachement aux valeurs traditionnelles des Peuls.';
      default:
        return 'Description non disponible pour cette région.';
    }
  }
}
