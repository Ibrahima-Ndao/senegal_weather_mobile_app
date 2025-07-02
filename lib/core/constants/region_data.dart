import 'package:flutter/material.dart';

class Region {
  final String id;
  final String name;
  final double latitude;
  final double longitude;
  final Color color;

  const Region({
    required this.id,
    required this.name,
    required this.latitude,
    required this.longitude,
    this.color = Colors.green,
  });
}

final List<Region> senegalRegions = [
  Region(
    id: 'DK',
    name: 'Dakar',
    latitude: 14.7167,
    longitude: -17.4677,
    color: const Color(0xFF00853F),
  ),
  Region(
    id: 'TH',
    name: 'Thiès',
    latitude: 14.7910,
    longitude: -16.9356,
    color: const Color(0xFFFDEF42),
  ),
  Region(
    id: 'SD',
    name: 'Saint-Louis',
    latitude: 14.7333,
    longitude: -17.6333,
    color: const Color(0xFFFDEF42),
  ),
  Region(
    id: 'KL',
    name: 'Kaolack',
    latitude: 14.4000,
    longitude: -16.3000,
    color: const Color(0xFFFDEF42),
  ),
  Region(
    id: 'ZG',
    name: 'Ziguinchor',
    latitude: 14.4000,
    longitude: -16.3000,
    color: const Color(0xFFFDEF42),
  )
];
