import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier{

  ThemeData currentTheme;

  ThemeProvider({
    required bool isDarkMode
  }): currentTheme = isDarkMode ? ThemeData.dark() : ThemeData.light(); //!si el isDarkMode es igual a true el currentTheme va a ser ThemeData.dark si no que sea light

  setLightMode () {
    currentTheme = ThemeData.light();
    notifyListeners(); //* necesitamos el notifyListeners() para avisar que tiene que redibujar
  }
  setDarkMode () {
    currentTheme = ThemeData.dark();
    notifyListeners();
  }
}