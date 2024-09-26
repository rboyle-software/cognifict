import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// Define the custom colors for Cognifict
class CognifictColors {
  static const Color primaryBlue = Color(0xFF1E3A8A); // Primary blue
  static const Color tealGreen = Color(0xFF116466); // Secondary teal
  static const Color softBlue = Color(0xFFDCEEF5); // Light background blue
  static const Color mossGreen = Color(0xFF91B247); // Accent moss green
  static const Color brightYellow = Color(0xFFFFC857); // Accent yellow
  static const Color mutedOrange = Color(0xFFFF8C42); // Accent muted orange
  static const Color offWhite = Color(0xFFF5F5F5); // Off-white for background
  static const Color coolGray = Color(0xFF4A5568); // Gray for text
  static const Color skyBlue = Color(0xFF3182CE); // Secondary blue
  static const Color forestGreen = Color(0xFF228B22); // Success green
}

ThemeData cognifictTheme = ThemeData(
  useMaterial3: true, // Enabling Material 3
  colorScheme: const ColorScheme(
    brightness: Brightness.light, // Light theme

    primary: CognifictColors.primaryBlue, // Primary color
    onPrimary: Colors.white, // Text/icons on primary color

    secondary: CognifictColors.tealGreen, // Secondary color
    onSecondary: Colors.white, // Text/icons on secondary color

    // background: CognifictColors.offWhite, // Background color
    // onBackground: CognifictColors.coolGray, // Text/icons on background

    surface: CognifictColors.softBlue, // Card/Surface background color
    onSurface: CognifictColors.coolGray, // Text/icons on surface color

    error: CognifictColors.brightYellow, // Error or warning
    onError: Colors.black, // Text/icons on error color

    // Optional tertiary color for minor accents
    tertiary: CognifictColors.skyBlue,
    onTertiary: Colors.white,

    // Shades for success or positive actions
    primaryContainer: CognifictColors.mossGreen,
    onPrimaryContainer: Colors.white,

    // Shades for buttons/alerts or important actions
    secondaryContainer: CognifictColors.forestGreen,
    onSecondaryContainer: Colors.white,
  ),

  // Customizing the AppBar theme
  appBarTheme: const AppBarTheme(
    backgroundColor: CognifictColors.primaryBlue,
    foregroundColor: Colors.white, // Icons/Text in AppBar
  ),

  // Button theme with Material 3 style
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: CognifictColors.tealGreen,
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
        color: CognifictColors.primaryBlue,
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
    headlineMedium: TextStyle(color: CognifictColors.primaryBlue, fontWeight: FontWeight.bold),
    headlineSmall: TextStyle(color: CognifictColors.tealGreen),
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
