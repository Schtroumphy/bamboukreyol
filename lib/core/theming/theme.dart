import 'package:bamboukreyol/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final lightTheme = ThemeData(
    fontFamily: GoogleFonts.rosario().fontFamily,
    scaffoldBackgroundColor: AppColor.primaryColor,
    textTheme: _textTheme,
    colorScheme: _colorScheme,
    elevatedButtonTheme: _elevatedButtonTheme
);

final _elevatedButtonTheme = ElevatedButtonThemeData(
  style: ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      backgroundColor: AppColor.primaryColor2,
      padding: EdgeInsets.zero,
  ),
);

final _textTheme = GoogleFonts.rosarioTextTheme().apply(
  bodyColor: Colors.white,
);

final _colorScheme = ColorScheme.fromSeed(
  seedColor: AppColor.primaryColor,
  onSecondary: AppColor.secondaryColor,
  secondary: AppColor.secondaryColor,
  tertiary: AppColor.tertiaryColor,
);
