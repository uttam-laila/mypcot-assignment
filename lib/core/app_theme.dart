import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mypcot_assignment/core/constants.dart';

ThemeData appTheme = ThemeData(
// Define the default brightness and colors.
  brightness: Brightness.light,
  primaryColor: Colors.black,
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.white,
    elevation: 0,
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    selectedItemColor: Colors.black54,
    unselectedItemColor: Colors.grey,
    selectedLabelStyle: TextStyle(
        color: Colors.black, fontWeight: FontWeight.w300, fontSize: 12),
    unselectedLabelStyle: TextStyle(
        color: Colors.grey, fontWeight: FontWeight.w300, fontSize: 12),
  ),
// Define the default font family.
  fontFamily: GoogleFonts.roboto().fontFamily,
  buttonTheme: const ButtonThemeData(
    alignedDropdown: true,
  ),
  textTheme: const TextTheme().apply(
    decorationColor: AppColors.textColor,
    fontFamily: GoogleFonts.roboto().fontFamily,
  ),
);
