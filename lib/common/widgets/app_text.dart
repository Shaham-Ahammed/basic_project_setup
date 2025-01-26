import 'package:basic_setups/utils/themes/custom_themes/apptheme_colors.dart';
import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  final String text;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? color;
  final TextAlign? textAlign;
  final int? maxLines;
  final TextOverflow? overflow;
  final TextStyle? style;

  const AppText(
    this.text, {
    super.key,
    this.fontSize,
    this.fontWeight,
    this.color,
    this.textAlign,
    this.maxLines,
    this.overflow,
    this.style,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style ??
          TextStyle(
            fontSize: fontSize,
            fontWeight: fontWeight,
            color: color ?? context.appColors.textColor,
          ),
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
    );
  }
}
