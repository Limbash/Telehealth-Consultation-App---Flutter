import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  // Light Theme
  static ThemeData lightTheme(BuildContext context) {
    return ThemeData(
      brightness: Brightness.light,
      primaryColor: Colors.blue,
      scaffoldBackgroundColor: Colors.white,
      textTheme:
          GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme).copyWith(
        bodyLarge: GoogleFonts.poppins(color: Colors.black87),
        bodyMedium: GoogleFonts.poppins(color: Colors.black87),
        displayLarge: GoogleFonts.poppins(color: Colors.black87),
        displayMedium: GoogleFonts.poppins(color: Colors.black87),
        displaySmall: GoogleFonts.poppins(color: Colors.black87),
      ),
      appBarTheme: AppBarTheme(
        color: Colors.blue,
        titleTextStyle: GoogleFonts.poppins(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      buttonTheme: ButtonThemeData(
        buttonColor: Colors.blue,
        textTheme: ButtonTextTheme.primary,
      ),
    );
  }

  // Dark Theme
  static ThemeData darkTheme(BuildContext context) {
    return ThemeData(
      brightness: Brightness.dark,
      primaryColor: Colors.blueAccent,
      scaffoldBackgroundColor: Colors.grey[900],
      textTheme:
          GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme).copyWith(
        bodyLarge: GoogleFonts.poppins(color: Colors.white),
        bodyMedium: GoogleFonts.poppins(color: Colors.white),
        displayLarge: GoogleFonts.poppins(color: Colors.white),
        displayMedium: GoogleFonts.poppins(color: Colors.white),
        displaySmall: GoogleFonts.poppins(color: Colors.white),
      ),
      appBarTheme: AppBarTheme(
        color: Colors.blueAccent,
        titleTextStyle: GoogleFonts.poppins(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      buttonTheme: ButtonThemeData(
        buttonColor: Colors.blueAccent,
        textTheme: ButtonTextTheme.primary,
      ),
    );
  }
}
