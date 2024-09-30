import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// Define the custom colors for Cognifict
class CognifictColors {
  static const Color darkBlue = Color.fromRGBO(7, 12, 18, 1); // Primary blue
  static const Color mediumBlue = Color.fromRGBO(3, 26, 44, 1); // Primary blue
  static const Color luminousBlue = Color.fromRGBO(18, 37, 51, 1); // Primary blue
  static const Color lighterBlue = Color.fromRGBO(31, 73, 105, 1);
  static const Color skyBlue = Color.fromARGB(255, 49, 130, 206); // Secondary blue
  static const Color softBlue = Color.fromARGB(255, 158, 213, 235); // Light background blue
  static const Color darkGreen = Color.fromARGB(255, 12, 62, 35); // Dark green
  static const Color mediumGreen = Color.fromARGB(255, 7, 91, 46); // Secondary green
  static const Color forestGreen = Color.fromARGB(255, 34, 139, 34); // Success green
  static const Color mossGreen = Color.fromARGB(255, 112, 139, 54); // Accent moss green
  static const Color goldenYellow = Color.fromRGBO(237, 203, 79, 1);
  static const Color brightYellow = Color.fromARGB(255, 255, 200, 87); // Accent yellow
  static const Color mutedOrange = Color.fromARGB(255, 255, 140, 66); // Accent muted orange
  static const Color offWhite = Color.fromARGB(255, 245, 245, 245); // Off-white for background
  static const Color coolGray = Color.fromARGB(255, 74, 85, 104); // Gray for text
}

ThemeData cognifictTheme = ThemeData(
  useMaterial3: true, // Enabling Material 3
  colorScheme: const ColorScheme(
    brightness: Brightness.light, // Light theme

    primary: CognifictColors.mediumBlue, // Primary color
    onPrimary: Color.fromARGB(255, 12, 89, 30), // Text/icons on primary color

    secondary: CognifictColors.mediumGreen, // Secondary color
    onSecondary: Colors.white, // Text/icons on secondary color

    // Optional tertiary color for minor accents
    tertiary: CognifictColors.skyBlue,
    onTertiary: Colors.white,

    surface: CognifictColors.luminousBlue, // Card/Surface background color
    onSurface: CognifictColors.darkGreen, // Text/icons on surface color

    error: CognifictColors.brightYellow, // Error or warning
    onError: Colors.black, // Text/icons on error color

    // Shades for success or positive actions
    primaryContainer: CognifictColors.mossGreen,
    onPrimaryContainer: Colors.white,

    // Shades for buttons/alerts or important actions
    secondaryContainer: CognifictColors.forestGreen,
    onSecondaryContainer: Colors.white,
  ),

  // Customizing the AppBar theme
  appBarTheme: const AppBarTheme(
    backgroundColor: CognifictColors.mediumBlue,
    foregroundColor: CognifictColors.mossGreen, // Icons/Text in AppBar
  ),

  // Button theme with Material 3 style
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: CognifictColors.mediumGreen,
      foregroundColor: Colors.white, // Text color
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8), // Rounded corners
      ),
    ),
  ),

  // Floating action button (FAB) styling
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: CognifictColors.brightYellow,
    foregroundColor: Colors.black,
  ),

  // Text field styling using the color scheme
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: CognifictColors.softBlue,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.0),
      borderSide: const BorderSide(
        color: CognifictColors.coolGray,
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.0),
      borderSide: const BorderSide(
        color: CognifictColors.mediumBlue,
        width: 2.0,
      ),
    ),
    labelStyle: const TextStyle(color: CognifictColors.coolGray),
  ),

  // Icon theme to align with the color scheme
  iconTheme: const IconThemeData(
    color: CognifictColors.coolGray,
  ),

  // Text theme that applies the color scheme for text styling
  textTheme: const TextTheme(
    bodyLarge: TextStyle(color: CognifictColors.coolGray),
    bodyMedium: TextStyle(color: CognifictColors.coolGray),
    bodySmall: TextStyle(color: CognifictColors.coolGray),
    headlineMedium: TextStyle(color: CognifictColors.mediumBlue, fontWeight: FontWeight.bold),
    headlineSmall: TextStyle(color: CognifictColors.mediumGreen),
    labelMedium: TextStyle(color: CognifictColors.skyBlue),
  ),
);

TextTheme textTheme = TextTheme(
  displayLarge: const TextStyle(
    fontSize: 72,
    fontWeight: FontWeight.bold,
  ),
  titleLarge: GoogleFonts.cabin(
    fontSize: 30,
    fontStyle: FontStyle.normal,
  ),
  bodyMedium: GoogleFonts.openSans(
    fontSize: 14,
  ),
  displaySmall: GoogleFonts.pacifico(),
);
