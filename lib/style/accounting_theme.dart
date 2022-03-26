import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AccountingTheme {
  static Color mainColor = const Color(0xFFF6F6F6);
  static Color accentColor = const Color(0xFF2F7CE4);

  static TextTheme lightTextTheme = TextTheme(
    titleSmall: GoogleFonts.openSans(
      fontSize: 16.0,
      fontWeight: FontWeight.w700,
      color: Colors.black,
    ),
  );

  static TextTheme darkTextTheme = TextTheme(
    bodyText1: GoogleFonts.openSans(
      fontSize: 14.0,
      fontWeight: FontWeight.w700,
      color: Colors.white,
    ),
  );

  static ThemeData lightTheme() {
    return ThemeData(
        brightness: Brightness.light,
        textTheme: lightTextTheme,
        appBarTheme: AppBarTheme(
          titleTextStyle: lightTextTheme.titleSmall,
          toolbarHeight: 50.0,
          foregroundColor: Colors.black,
          backgroundColor: mainColor,
        ));
  }

  static ThemeData darkTheme() {
    return ThemeData();
  }
}
