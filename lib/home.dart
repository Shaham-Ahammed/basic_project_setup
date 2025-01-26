import 'package:basic_setups/localization/abstract_localization.dart';
import 'package:basic_setups/localization/localization.dart';
import 'package:basic_setups/utils/themes/custom_themes/apptheme_colors.dart';
import 'package:basic_setups/utils/themes/themes.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final authLocalization =
        LocalizationManager.localization<AuthLocalization>();
    return Scaffold(
      appBar: AppBar(
        title: Text('Basic setup'),
        actions: [
          IconButton(
            icon: Icon(Icons.brightness_4_outlined),
            onPressed: () {
              AppThemes.changeAppTheme();
            },
          ),
          IconButton(
            icon: Icon(Icons.language),
            onPressed: () {
              LocalizationManager.currentLocale.languageCode == 'ar'
                  ? LocalizationManager().toggleLanguage(Locale('en'))
                  : LocalizationManager().toggleLanguage(Locale('ar'));
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {},
              child: Container(
                color: context.appColors.primaryColor,
                padding: EdgeInsets.all(20),
                child: Text(
                  authLocalization.forgotPasswordTitle,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
