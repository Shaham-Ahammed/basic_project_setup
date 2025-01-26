import 'package:basic_setups/home.dart';
import 'package:basic_setups/localization/localization.dart';
import 'package:basic_setups/utils/constants/navigator_key.dart';
import 'package:basic_setups/utils/themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main(List<String> args) {
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: LocalizationManager(),
      builder: (context, child) => ValueListenableBuilder<ThemeMode>(
        valueListenable: AppThemes.appTheme,
        builder: (context, theme, child) => MaterialApp(
          themeMode: theme,
          localizationsDelegates: [
            // Custom delegates if any
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          navigatorKey: navigatorKey,
          // Supported locales
          supportedLocales: [
            const Locale('en', ''), // English
            const Locale('ar', ''), // Arabic
          ],

          // Optional: Set initial locale
          locale: LocalizationManager.currentLocale,
          debugShowCheckedModeBanner: false,
          theme: AppThemes.lightTheme,
          darkTheme: AppThemes.darkTheme,
          home: Home(),
        ),
      ),
    );
  }
}
