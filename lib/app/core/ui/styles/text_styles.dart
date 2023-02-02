import 'package:flutter/material.dart';

class TextStyles {
  static TextStyles? _instance;

  TextStyles._();

  static TextStyles get instance {
    _instance ??= TextStyles._();
    return _instance!;
  }

  String get font => 'mplus1';

  TextStyle get TextLight =>
      TextStyle(fontWeight: FontWeight.w300, fontFamily: font);
  TextStyle get TextRegular =>
      TextStyle(fontWeight: FontWeight.normal, fontFamily: font);
  TextStyle get TextMedium =>
      TextStyle(fontWeight: FontWeight.w500, fontFamily: font);
  TextStyle get TextSemiBold =>
      TextStyle(fontWeight: FontWeight.w600, fontFamily: font);
  TextStyle get TextBold =>
      TextStyle(fontWeight: FontWeight.bold, fontFamily: font);
  TextStyle get TextExtrabold =>
      TextStyle(fontWeight: FontWeight.w800, fontFamily: font);
  TextStyle get TextButtonLabel => TextBold.copyWith(fontSize: 14);
}

extension TextStyleExtension on BuildContext {
  TextStyles get textStyle => TextStyles.instance;
}
