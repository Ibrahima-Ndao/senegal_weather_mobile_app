// core/widgets/region_card.dart
import 'package:flutter/material.dart';
import 'package:senegal_weather_app/domain/entities/weather_entity.dart';

class RegionCard extends StatefulWidget {
  final WeatherEntity weather;
  final VoidCallback onTap;

  const RegionCard(
      {super.key,
      required this.weather,
      required this.onTap,
      required bool isDarkMode});

  @override
  State<RegionCard> createState() => _RegionCardState();
}

class _RegionCardState extends State<RegionCard> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: GestureDetector(
        onTap: widget.onTap,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOut,
          margin: const EdgeInsets.all(8),
          transform: Matrix4.identity()..scale(_isHovered ? 1.05 : 1.0),
          decoration: BoxDecoration(
            color: Theme.of(context).cardColor,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 10,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                widget.weather.region.name,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 6),
              Image.network(
                widget.weather.iconUrl,
                width: 60,
                height: 60,
                errorBuilder: (_, __, ___) => const Icon(Icons.cloud, size: 40),
              ),
              const SizedBox(height: 10),
              Text(
                '${widget.weather.temperature.toStringAsFixed(1)}°C',
                style: const TextStyle(fontSize: 24),
              ),
              Text(
                widget.weather.condition,
                style: const TextStyle(fontSize: 14),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
