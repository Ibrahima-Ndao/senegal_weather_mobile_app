// core/constants/app_strings.dart
class AppStrings {
  static const String appTitle = "Météo Sénégal";
  static const String homeTitle = "Météo des cinq villes du Sénégal";
  static const String startButton = "Commencer";
  static const String loadingMessages =
      "Nous téléchargeons les données...|Analyse des conditions...|Presque terminé...|Préparation des résultats...";
  static const String temperature = "Température";
  static const String humidity = "Humidité";
  static const String windSpeed = "Vitesse du vent";

  static List<String> getLoadingMessages() {
    return loadingMessages.split('|');
  }
}
