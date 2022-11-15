import 'package:flutter/material.dart';
import 'mercado_colors.dart';

/// MercadoPR Official Colors
const mercadoPrimaryColor = mercadoPrimary;
const mercadoSecondaryColor = mercadoSecondary;

/// MercadoPR Theme
class MercadoTheme {
  ThemeData lightTheme = ThemeData(
      indicatorColor: mercadoPrimaryColor,
      brightness: Brightness.light,
      dividerColor: const Color.fromRGBO(80, 104, 144, 0.5),

      /// AppBar
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.white,
        foregroundColor: mercadoPrimaryColor,
      ),

      /// Text Elements
      textTheme: const TextTheme(
        bodyText1: TextStyle(fontSize: 16),
        headline1: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: mercadoPrimaryColor), //Color.fromRGBO(18, 151, 147, 1)),
        headline2: TextStyle(
            fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
        headline3: TextStyle(
            fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black),
      ),

      /// ThemeBar
      tabBarTheme: const TabBarTheme(
        labelColor: mercadoPrimaryColor,
        unselectedLabelColor: mercadoSecondaryColor,
      ),

      /// Elevated Buttons
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
              backgroundColor:
                  const MaterialStatePropertyAll(mercadoPrimaryColor),
              padding: MaterialStateProperty.all(const EdgeInsets.all(18)))),

      /// Main Bottom Navigation
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedItemColor: mercadoPrimaryColor,
        unselectedItemColor: mercadoSecondaryColor,
      )
  );




  ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    dividerColor: const Color.fromRGBO(255, 255, 255, 0.5),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.black26,
      foregroundColor: mercadoPrimaryColor, //Colors.white,
    ),
    textTheme: const TextTheme(
      headline1: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: mercadoPrimaryColor),
      headline2: TextStyle(
          fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
      headline3: TextStyle(
          fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white),
    ),
  );
}
