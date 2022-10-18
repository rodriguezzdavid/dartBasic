import 'package:flutter/material.dart';

class AppTheme {

  static const Color primaryColor = Colors.green;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
        //Color primario
        primaryColor: Colors.indigo,

        //App Bar theme
        appBarTheme: const AppBarTheme(
          color: primaryColor,
          elevation: 0
        )
      );
}