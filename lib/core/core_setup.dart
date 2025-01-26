import 'package:flutter/material.dart';

class CoreSetupController extends ChangeNotifier {
  static final CoreSetupController _dataClass = CoreSetupController._internal();

  factory CoreSetupController() {
    return _dataClass;
  }

  CoreSetupController._internal();

  Locale _currentLocale = const Locale('en');

  Locale get currentLocale => _currentLocale;

  void changeLocale() {
    _currentLocale =
        _currentLocale == Locale('en') ? Locale('ar') : Locale('en');
    notifyListeners();
  }
}
