import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import '../common/route/router_config.dart';
import '../localization/localization.dart';
import '../utils/themes/themes.dart';

class CoreSetup extends StatelessWidget {
  const CoreSetup({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: LocalizationManager(),
      builder: (context, child) => ValueListenableBuilder<ThemeMode>(
        valueListenable: AppThemes.appTheme,
        builder: (context, theme, child) => MaterialApp.router(
          themeMode: theme,
          localizationsDelegates: [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          routerConfig: goRouterConfiguration,
          supportedLocales: [
            const Locale('en'), // English
            const Locale('ar'), // Arabic
          ],
          locale: LocalizationManager.currentLocale,
          debugShowCheckedModeBanner: false,
          theme: AppThemes.lightTheme,
          darkTheme: AppThemes.darkTheme,
        ),
      ),
    );
  }
}
