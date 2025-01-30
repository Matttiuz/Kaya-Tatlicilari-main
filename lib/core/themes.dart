// burada temalandirma + renkler + ... yazicaz.

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// import 'constants.dart';

// theme_provider.dart
class ThemeProvider extends ChangeNotifier {
  bool _isDarkTheme = false;
  bool get isDarkTheme => _isDarkTheme;

  ThemeData get currentTheme =>
      _isDarkTheme ? ThemeData.dark() : ThemeData.light();

  void toggleTheme() {
    _isDarkTheme = !_isDarkTheme;
    notifyListeners();
  }
}

const colors = {
  "primary": Color.fromARGB(255, 228, 74, 106), // Arka plan ana rengi (pembe)
  "onPrimary":
      Color.fromARGB(255, 255, 255, 255), // Beyaz (pembe üzerinde kontrast)
  "secondary": Color.fromARGB(255, 255, 201, 211), // Daha açık bir pembe tonu
  "onSecondary": Color.fromARGB(255, 92, 85, 110), // Nötr koyu mor-gri
  "surface": Color.fromARGB(255, 250, 193, 214), // Hafif pembe alt tonlu beyaz
  "onSurface": Color.fromARGB(255, 74, 74, 74), // Nötr koyu gri
  "success":
      Color.fromARGB(255, 196, 40, 71), // Pastel yeşil (pembe ile kontrast)
  "error": Color.fromARGB(255, 229, 57, 53), // Hafif doygun kırmızı
  "onError": Color.fromARGB(255, 255, 255, 255), // Beyaz
};

const darkColors = {
  "primary": Color.fromARGB(255, 88, 50, 92), // Derin koyu morumsu pembe
  "onPrimary": Color.fromARGB(255, 220, 220, 220), // Yumuşak açık gri
  "secondary": Color.fromARGB(255, 255, 255, 255), // Koyu mavi-gri
  "onSecondary": Color.fromARGB(255, 200, 200, 210), // Hafif gri tonu
  "surface": Color.fromARGB(255, 88, 50, 92), // Saf koyu siyah-gri karışımı
  "onSurface": Color.fromARGB(255, 210, 210, 215), // Yumuşak nötr açık gri
  "success": Color.fromARGB(255, 255, 255, 255), // Hafif yeşilimsi koyu ton
  "error": Color.fromARGB(255, 120, 40, 40), // Doygun koyu kırmızı
  "onError": Color.fromARGB(255, 240, 240, 240), // Hafif kırık beyaz
};

final lightTheme = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme(
    brightness: Brightness.light,
    primary: colors["primary"]!,
    onPrimary: colors["onPrimary"]!,
    secondary: colors["secondary"]!,
    onSecondary: colors["onSecondary"]!,
    error: colors["error"]!,
    onError: colors["onError"]!,
    surface: colors["surface"]!,
    onSurface: colors["onSurface"]!,
  ),
  textTheme: TextTheme(
    bodySmall: GoogleFonts.oswald(
        // fontSize: 32,
        ),
    bodyMedium: GoogleFonts.oswald(),
    bodyLarge: GoogleFonts.oswald(),
    labelSmall: GoogleFonts.oswald(),
    labelMedium: GoogleFonts.oswald(),
    labelLarge: GoogleFonts.oswald(),
    titleSmall: GoogleFonts.oswald(),
    titleMedium: GoogleFonts.oswald(),
    titleLarge: GoogleFonts.oswald(),
    headlineSmall: GoogleFonts.oswald(),
    headlineMedium: GoogleFonts.oswald(),
    headlineLarge: GoogleFonts.oswald(),
    displaySmall: GoogleFonts.oswald(),
    displayMedium: GoogleFonts.oswald(),
    displayLarge: GoogleFonts.oswald(),
  ),
);

final darkTheme = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    brightness: Brightness.dark,
    primary: darkColors["primary"]!,
    onPrimary: darkColors["onPrimary"]!,
    secondary: darkColors["secondary"]!,
    onSecondary: darkColors["onSecondary"]!,
    error: darkColors["error"]!,
    onError: darkColors["onError"]!,
    surface: darkColors["surface"]!,
    onSurface: darkColors["onSurface"]!,
  ),
  textTheme: TextTheme(
    bodySmall: GoogleFonts.roboto(
        // fontSize: 30,
        ),
    bodyMedium: GoogleFonts.roboto(),
    bodyLarge: GoogleFonts.roboto(),
    labelSmall: GoogleFonts.roboto(),
    labelMedium: GoogleFonts.roboto(),
    labelLarge: GoogleFonts.roboto(),
    titleSmall: GoogleFonts.roboto(),
    titleMedium: GoogleFonts.roboto(),
    titleLarge: GoogleFonts.roboto(),
    headlineSmall: GoogleFonts.aBeeZee(),
    headlineMedium: GoogleFonts.aBeeZee(),
    headlineLarge: GoogleFonts.aBeeZee(),
    displaySmall: GoogleFonts.abrilFatface(),
    displayMedium: GoogleFonts.abrilFatface(),
    displayLarge: GoogleFonts.abrilFatface(),
  ),
);
