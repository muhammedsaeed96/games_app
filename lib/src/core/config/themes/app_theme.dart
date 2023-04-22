import 'package:flutter/material.dart';

import '../../utils/constants.dart';

abstract class AppTheme {
  static ThemeData get light {
    return ThemeData(
      appBarTheme: const AppBarTheme(
        elevation: 0,
        color: Colors.white,
      ),
      scaffoldBackgroundColor: kPrimaryColor,
      primaryColor: kTextColor1,
      // splashColor: Colors.transparent,
      // fontFamily: 'IBM',
      // colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.black),
    );
  }

  static InputDecoration get inputDecoration {
    OutlineInputBorder outlineInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(18),
      borderSide: const BorderSide(color: kTextColor2),
      gapPadding: 10,
    );
    return InputDecoration(
      floatingLabelBehavior: FloatingLabelBehavior.always,
      contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      focusedBorder: outlineInputBorder,
      border: outlineInputBorder,
      fillColor: kPrimaryColor,
      filled: true,
      prefixIcon: const Icon(
        Icons.search,
        size: 24,
      ),
      iconColor: kTextColor1,
      hintText: 'Search game',
    );
  }

  static BoxDecoration get roundedContainer {
    return BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20),
      boxShadow: const [
        BoxShadow(
            color: Colors.black12, blurRadius: 2, blurStyle: BlurStyle.outer)
      ],
    );
  }
}
