import 'package:flutter/material.dart';

class HomeMenu {
  final GlobalKey key;
  final double position;
  final String title;
  final ValueChanged<double> selectSection;

  const HomeMenu({
    required this.key,
    required this.position,
    required this.title,
    required this.selectSection,
  });

  void goToSection() => selectSection(position);
}
