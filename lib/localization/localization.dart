import 'package:basic_setups/localization/abstract_localization.dart';
import 'package:basic_setups/localization/locale_implementation.dart';
import 'package:flutter/material.dart';

class LocalizationManager extends ChangeNotifier {
  static final LocalizationManager _instance = LocalizationManager._internal();

  factory LocalizationManager() => _instance;

  LocalizationManager._internal();

  // Add all language localizations here

  static final Map<Type, dynamic> _arabicLocalizations = {
    AuthLocalization: ArabicAuthLocalization(),
    // Add other localization types
  };

  static final Map<Type, dynamic> _englishLocalizations = {
    AuthLocalization: EnglishAuthLocalization(),
    // Add other localization types
  };

  static Locale _currentLocale = const Locale('en');

  static Locale get currentLocale => _currentLocale;

  static T localization<T>() {
    final Map<Type, dynamic> localizationMap;

    if (_currentLocale.languageCode == 'ar') {
      localizationMap = _arabicLocalizations;
    } else {
      localizationMap = _englishLocalizations;
    }

    return localizationMap[T] as T;
  }

  void toggleLanguage(Locale locale) {
    _currentLocale = locale;

    notifyListeners();
  }
}
