import 'package:flutter/material.dart';

class TTextTheme {
  TTextTheme._();

  static TextTheme lightTextTheme = TextTheme(
    titleLarge: TextStyle().copyWith(
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    titleSmall: TextStyle().copyWith(
      fontSize: 16,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
  );

  static TextTheme darkTextTheme = TextTheme(
    titleLarge: TextStyle().copyWith(
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
    titleSmall: TextStyle().copyWith(
      fontSize: 16,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
  );
}


  extension ContextExtension on BuildContext {
    ThemeData get context =>  Theme.of(this);
    
  }
