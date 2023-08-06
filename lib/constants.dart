import 'package:flutter/material.dart';
import 'main.dart';

const Color willowGold = Color(0xFFae8514);
const Color willowGray = Color(0xFF31405f);
final Color themeColor = MyApp.themeNotifier.value == ThemeMode.light ? const Color(0xFF233271) : const Color(0xFF5b9bd5);
final Color themeTextColor = MyApp.themeNotifier.value == ThemeMode.light ? Colors.white: Colors.white;
const TextStyle chalk = TextStyle(color: Color(0xFFCED8F7),fontFamily: 'PermanentMarker');
const TextStyle labelText = TextStyle(color: Color(0xFFCED8F7),fontFamily: 'PermanentMarker',fontSize: 24.0);

final ThemeData lightTheme = ThemeData(
  scaffoldBackgroundColor: const Color(0xFF1b3048),
  primarySwatch: customPrimaryColor,
  appBarTheme: const AppBarTheme(color: willowGold),
  primaryColor: const Color(0xFFae8514),
  primaryColorLight: const Color(0xFF1b3048),
  primaryColorDark: const Color(0xFF1b3048),
  splashColor: willowGold,
  fontFamily: 'Kodchasan',
  dialogBackgroundColor: Colors.white,
  textTheme: const TextTheme(
    bodyText1: TextStyle(),
    bodyText2: TextStyle(),
  ).apply(
    bodyColor: const Color(0xFFae8514),
    displayColor: const Color(0xFFae8514),
  ),
);

final ThemeData darkTheme = ThemeData(
  scaffoldBackgroundColor: const Color(0xFF222222),
  primarySwatch: customAccentColor,
  appBarTheme: const AppBarTheme(color: willowGray),
  primaryColor: const Color(0xFFe1b6e4),
  primaryColorLight: willowGray.withOpacity(1),
  primaryColorDark: willowGray.withOpacity(0.5),
  splashColor: Color(0xFF327087),
  fontFamily: 'Kodchasan',
  brightness: Brightness.dark,
  dialogBackgroundColor: const Color(0xFFffffff),
  textTheme: const TextTheme(
    bodyText1: TextStyle(),
    bodyText2: TextStyle(),
  ).apply(
    bodyColor: const Color(0xFFe1b6e4),
    displayColor: const Color(0xFFe1b6e4),
  ),
);

final ThemeData aestheticTheme = ThemeData(
  scaffoldBackgroundColor: const Color(0xFF222222),
  primarySwatch: customAccentColor,
  appBarTheme: const AppBarTheme(color: willowGray),
  primaryColor: const Color(0xFFffffff),
  primaryColorLight: const Color(0xFFa35390),
  primaryColorDark: const Color(0xFF602750),
  splashColor: const Color(0xFFe1b6e4),
  fontFamily: 'Kodchasan',
  brightness: Brightness.dark,
  dialogBackgroundColor: Colors.white,
  textTheme: const TextTheme(
    bodyText1: TextStyle(),
    bodyText2: TextStyle(),
  ).apply(
    bodyColor: const Color(0xFFffffff),
    displayColor: const Color(0xFFce65ba),
  ),
);

Map<int, Color> primaryColorCodes =
{
  50:const Color.fromRGBO(174,133,20, .1),
  100:const Color.fromRGBO(174,133,20, .2),
  200:const Color.fromRGBO(174,133,20, .3),
  300:const Color.fromRGBO(174,133,20, .4),
  400:const Color.fromRGBO(174,133,20, .5),
  500:const Color.fromRGBO(174,133,20, .6),
  600:const Color.fromRGBO(174,133,20, .7),
  700:const Color.fromRGBO(174,133,20, .8),
  800:const Color.fromRGBO(174,133,20, .9),
  900:const Color.fromRGBO(174,133,20, 1),
};

MaterialColor customPrimaryColor = MaterialColor(0xFFae8514, primaryColorCodes);

Map<int, Color> accentColorCodes =
{
  50:const Color.fromRGBO(49, 64, 95, .1),
  100:const Color.fromRGBO(49, 64, 95, .2),
  200:const Color.fromRGBO(49, 64, 95, .3),
  300:const Color.fromRGBO(49, 64, 95, .4),
  400:const Color.fromRGBO(49, 64, 95, .5),
  500:const Color.fromRGBO(49, 64, 95, .6),
  600:const Color.fromRGBO(49, 64, 95, .7),
  700:const Color.fromRGBO(49, 64, 95, .8),
  800:const Color.fromRGBO(49, 64, 95, .9),
  900:const Color.fromRGBO(49, 64, 95, 1),
};

MaterialColor customAccentColor = MaterialColor(0xFF31405f, primaryColorCodes);