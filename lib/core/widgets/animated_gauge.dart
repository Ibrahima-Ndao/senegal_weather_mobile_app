// core/widgets/animated_gauge.dart
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:senegal_weather_app/core/constants/app_colors.dart';

class AnimatedWeatherGauge extends StatefulWidget {
  final Duration duration;
  final VoidCallback onComplete;

  const AnimatedWeatherGauge({
    super.key,
    required this.duration,
    required this.onComplete,
    required bool isDarkMode,
  });

  @override
  State<AnimatedWeatherGauge> createState() => _AnimatedWeatherGaugeState();
}

class _AnimatedWeatherGaugeState extends State<AnimatedWeatherGauge>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  final List<String> _messages = [
    "Nous téléchargeons les données...",
    "Analyse des conditions régionales...",
    "Presque terminé...",
    "Préparation des résultats...",
  ];
  int _currentMessageIndex = 0;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: widget.duration)
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          widget.onComplete();
        }
      });

    // Changer le message toutes les 5 secondes
    _controller.addListener(() {
      final newIndex = (_controller.value * _messages.length).floor();
      if (newIndex != _currentMessageIndex) {
        setState(
          () => _currentMessageIndex = newIndex.clamp(0, _messages.length - 1),
        );
      }
    });

    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            CircularProgressIndicator(
              value: _controller.value,
              strokeWidth: 12,
              backgroundColor: Colors.grey[300],
              color: AppColors.senegalGreen,
            ),
            Lottie.asset(
              'assets/animations/senegal_icon.json',
              width: 50,
              height: 50,
              controller: _controller,
            ),
          ],
        ),
        const SizedBox(height: 30),
        Text(
          _messages[_currentMessageIndex],
          style: const TextStyle(fontSize: 18, fontStyle: FontStyle.italic),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
