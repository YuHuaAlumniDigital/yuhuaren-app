import 'package:flutter/material.dart';
import 'package:yuhuaren_app/shared/color.dart';

const inputDecorationTheme = InputDecorationTheme(
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(
      width: 2,
      color: primary,
    ),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(
      width: 2,
      color: primary,
    ),
  ),
  prefixIconColor: icon,
  suffixIconColor: icon,
  floatingLabelStyle: TextStyle(color: primary),
  labelStyle: TextStyle(color: icon),
  constraints: BoxConstraints(
    minHeight: 56,
  ),
  helperStyle: TextStyle(
    color: primary,
  ),
);

final elevatedButtonThemeData = ElevatedButtonThemeData(
  style: ElevatedButton.styleFrom(
      minimumSize: const Size.fromHeight(40),
      backgroundColor: primary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(100.0),
      ),
      textStyle: const TextStyle(fontWeight: FontWeight.w700)),
);

final textButtonThemeData = TextButtonThemeData(
  style: TextButton.styleFrom(
    minimumSize: const Size.fromHeight(40),
    foregroundColor: primary,
    backgroundColor: secondary,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(100.0),
    ),
    textStyle: const TextStyle(fontWeight: FontWeight.w700),
  ),
);

const appBarTheme = AppBarTheme(
  color: Colors.white,
  shadowColor: Colors.transparent,
  centerTitle: false,
  titleTextStyle: TextStyle(
    color: primary,
    fontSize: 22,
    fontWeight: FontWeight.w700,
  ),
  iconTheme: IconThemeData(
    color: primary,
  ),
);

final themeData = ThemeData(
  appBarTheme: appBarTheme,
  scaffoldBackgroundColor: Colors.white,
  inputDecorationTheme: inputDecorationTheme,
  elevatedButtonTheme: elevatedButtonThemeData,
  textButtonTheme: textButtonThemeData,
);
