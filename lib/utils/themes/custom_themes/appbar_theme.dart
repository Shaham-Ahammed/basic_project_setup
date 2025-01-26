import 'package:flutter/material.dart';

class TAppbarTheme {
  TAppbarTheme._();

  static AppBarTheme lightAppbarTheme = AppBarTheme().copyWith(
    backgroundColor: Colors.blue,
    centerTitle: true,
    titleTextStyle: TextStyle().copyWith(
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
  );
  static AppBarTheme darkAppbarTheme = AppBarTheme().copyWith(
    backgroundColor: Colors.grey.shade700,
    centerTitle: true,
    titleTextStyle: TextStyle().copyWith(
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
  );
}
