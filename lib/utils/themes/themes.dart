import 'package:basic_setups/utils/themes/custom_themes/appbar_theme.dart';
import 'package:basic_setups/utils/themes/custom_themes/apptheme_colors.dart';
import 'package:basic_setups/utils/themes/custom_themes/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppThemes {
  AppThemes._();

  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    useMaterial3: true,
    appBarTheme: TAppbarTheme.lightAppbarTheme,
    fontFamily: GoogleFonts.roboto().fontFamily,
    scaffoldBackgroundColor: Colors.white,
    textTheme: TTextTheme.lightTextTheme,
    extensions: [AppColorExtension.light],
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.grey,
    appBarTheme: TAppbarTheme.darkAppbarTheme,
    useMaterial3: true,
    fontFamily: GoogleFonts.poppins().fontFamily,
    scaffoldBackgroundColor: Colors.black,
    textTheme: TTextTheme.darkTextTheme,
    extensions: [AppColorExtension.dark],
  );

  static ValueNotifier<ThemeMode> appTheme =
      ValueNotifier<ThemeMode>(ThemeMode.dark);

  static void changeAppTheme() {
    appTheme.value =
        appTheme.value == ThemeMode.dark ? ThemeMode.light : ThemeMode.dark;
  }
}
