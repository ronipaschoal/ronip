import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

sealed class RpTheme {
  static const Color witheColor = Color(0xFFFEFEFE);

  static const Color textColor = Color(0xFFF3F4FF);
  static const Color brandColor = Color(0xFF61F7FF);
  static const Color bannerColor = Color(0xFF1A73E8);
  static const Color backgroundColor = Color(0xFF0A192F);
  static const Color backgroundColorDark = Color(0xFF040C19);

  static const double fontSizeLarge = 44.0;
  static const double fontSizeMedium = 24.0;
  static const double fontSizeRegular = 16.0;

  static const double spacingXS = 4.0;
  static const double spacingSmall = 8.0;
  static const double spacingMedium = 16.0;
  static const double spacingLarge = 32.0;

  static const SizedBox spacerXS =
      SizedBox(height: spacingXS, width: spacingXS);
  static const SizedBox spacerSmall =
      SizedBox(height: spacingSmall, width: spacingSmall);
  static const SizedBox spacerMedium =
      SizedBox(height: spacingMedium, width: spacingMedium);
  static const SizedBox spacerLarge =
      SizedBox(height: spacingLarge, width: spacingLarge);

  static final theme = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: RpTheme.brandColor),
    scaffoldBackgroundColor: RpTheme.backgroundColor,
    textTheme: const TextTheme(
      bodyMedium: TextStyle(
        color: RpTheme.textColor,
        fontSize: RpTheme.fontSizeRegular,
      ),
    ),
    useMaterial3: true,
  );
}
