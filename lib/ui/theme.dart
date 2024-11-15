import 'package:flutter/material.dart';

sealed class RpTheme {
  static const Color witheColor = Color(0xFFFEFEFE);
  static const Color transparentColor = Color(0x00FEFEFE);

  static const Color textColor = Color(0xFFF3F4FF);
  static const Color brandColor = Color(0xFFC92F10);
  static const Color bannerColor = Color(0xFF1A73E8);
  static const Color menuColor = Color(0xCC0B0B18);
  static const Color backgroundColor = Color(0xFF0B0B18);
  static const Color backgroundColorDark = Color(0xFF0B0B18);

  static const double fontSizeLarge = 44.0;
  static const double fontSizeMedium = 24.0;
  static const double fontSizeRegular = 16.0;

  static const double spacingSmallX = 4.0;
  static const double spacingSmall = 8.0;
  static const double spacingMedium = 16.0;
  static const double spacingLarge = 32.0;
  static const double spacingLargeX = 64.0;

  static const SizedBox spacerSmallX =
      SizedBox(height: spacingSmallX, width: spacingSmallX);
  static const SizedBox spacerSmall =
      SizedBox(height: spacingSmall, width: spacingSmall);
  static const SizedBox spacerMedium =
      SizedBox(height: spacingMedium, width: spacingMedium);
  static const SizedBox spacerLarge =
      SizedBox(height: spacingLarge, width: spacingLarge);
  static const SizedBox spacerLargeX =
      SizedBox(height: spacingLargeX, width: spacingLargeX);

  static final theme = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: RpTheme.brandColor),
    scaffoldBackgroundColor: RpTheme.backgroundColor,
    textTheme: const TextTheme(
      bodyMedium: TextStyle(
        color: RpTheme.textColor,
        fontSize: RpTheme.fontSizeRegular,
      ),
    ),
  );
}
