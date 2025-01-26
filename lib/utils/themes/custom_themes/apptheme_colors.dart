// Custom Theme Extension
import 'package:flutter/material.dart';

class AppColorExtension extends ThemeExtension<AppColorExtension> {
  // Define your theme-specific colors here
  final Color borderColor;
  final Color backgroundColor;
  final Color primaryColor;
  final Color textColor;
  final Color secondaryColor;

  AppColorExtension({
    required this.borderColor,
    required this.backgroundColor,
    required this.primaryColor,
    required this.textColor,
    required this.secondaryColor,
  });

  // Light Theme Colors
  static final light = AppColorExtension(
    borderColor: Colors.grey.shade300,
    backgroundColor: Colors.white,
    primaryColor: Colors.blue,
    textColor: Colors.black,
    secondaryColor: Colors.blue.shade100,
  );

  // Dark Theme Colors
  static final dark = AppColorExtension(
    borderColor: Colors.grey.shade700,
    backgroundColor: Colors.black,
    primaryColor: Colors.grey,
    textColor: Colors.white,
    secondaryColor: Colors.blue.shade900,
  );

  @override
  ThemeExtension<AppColorExtension> copyWith({
    Color? borderColor,
    Color? backgroundColor,
    Color? primaryColor,
    Color? textColor,
    Color? secondaryColor,
  }) {
    return AppColorExtension(
      borderColor: borderColor ?? this.borderColor,
      backgroundColor: backgroundColor ?? this.backgroundColor,
      primaryColor: primaryColor ?? this.primaryColor,
      textColor: textColor ?? this.textColor,
      secondaryColor: secondaryColor ?? this.secondaryColor,
    );
  }

  @override
  ThemeExtension<AppColorExtension> lerp(
    ThemeExtension<AppColorExtension>? other,
    double t,
  ) {
    if (other is! AppColorExtension) {
      return this;
    }
    return AppColorExtension(
      borderColor: Color.lerp(borderColor, other.borderColor, t)!,
      backgroundColor: Color.lerp(backgroundColor, other.backgroundColor, t)!,
      primaryColor: Color.lerp(primaryColor, other.primaryColor, t)!,
      textColor: Color.lerp(textColor, other.textColor, t)!,
      secondaryColor: Color.lerp(secondaryColor, other.secondaryColor, t)!,
    );
  }
}

extension AppThemeExtension on BuildContext {
  AppColorExtension get appColors {
    return Theme.of(this).extension<AppColorExtension>() ??
        AppColorExtension.light;
  }
}
