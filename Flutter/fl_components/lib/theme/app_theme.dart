import 'package:flutter/material.dart';

class AppTheme {

  static const Color primaryColor = Colors.orange;
  static const Color secondColor = Colors.white;

  //////////////////////////////////////////////
  ////////////       LIGHT       ///////////////
  //////////////////////////////////////////////
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    //Color primario
    primaryColor: Colors.black,

    //App Bar theme
    appBarTheme: const AppBarTheme(
      color: primaryColor,
      elevation: 0
    ),

    // TextButton Theme
    textButtonTheme: TextButtonThemeData( 
      style: TextButton.styleFrom( primary: primaryColor )
    ),

    //Floating Action Bottom
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: primaryColor,
      elevation: 5,
    ),


    //Elevated Button
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: Colors.indigo,
        shape: const StadiumBorder(),
        elevation: 0,
      ),)
  );


  //////////////////////////////////////////////
  ////////////       DARK        ///////////////
  //////////////////////////////////////////////
  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    //Color primario
    primaryColor: Colors.white,

    //App Bar theme
    appBarTheme: const AppBarTheme(
      color: primaryColor,
      elevation: 0
    ),

    // TextButton Theme
    textButtonTheme: TextButtonThemeData( 
      style: TextButton.styleFrom( primary: secondColor )
    )
  );
}