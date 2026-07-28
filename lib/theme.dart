import 'package:flutter/material.dart';

class CosmicTheme {
  static const Color background = Color(0xFF090C15);
  static const Color cardBg = Color(0xFF101526);
  static const Color surfaceBg = Color(0xFF161C30);
  static const Color primaryPurple = Color(0xFF7063EC);
  static const Color primaryBlue = Color(0xFF4C8DF5);
  static const Color textWhite = Color(0xFFFFFFFF);
  static const Color textMuted = Color(0xFF8B95B3);

  static LinearGradient primaryGradient = const LinearGradient(
    colors: [Color(0xFF5374F9), Color(0xFF9163ED)],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );

  static ThemeData get darkTheme {
    return ThemeData.dark().copyWith(
      scaffoldBackgroundColor: background,
      primaryColor: primaryPurple,
      colorScheme: const ColorScheme.dark(
        primary: primaryPurple,
        surface: cardBg,
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: background,
        selectedItemColor: primaryBlue,
        unselectedItemColor: textMuted,
      ),
    );
  }
}
