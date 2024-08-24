import 'package:flutter/material.dart';
import 'package:app_novo/models/home.dart';
import 'package:app_novo/models/color_selection.dart';
import 'util.dart';
import 'theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeMode themeMode = ThemeMode.light;
  ColorSelection colorSelection = ColorSelection.indigo;

  void toggleThemeMode() {
    setState(() {
      themeMode = themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    });
  }


  @override
  Widget build(BuildContext context) {
    final brightness = View.of(context).platformDispatcher.platformBrightness;
    TextTheme textTheme = createTextTheme(context, "Nunito Sans", "Nunito Sans");

    MaterialTheme theme = MaterialTheme(textTheme);
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      themeMode: themeMode,
      darkTheme: theme.dark(),
      theme: theme.light(),
      home: Home(
        changeTheme: (useLightMode) {
          toggleThemeMode();

        },
        changeColor: (value) {},
        title: "Restaurants",
        colorSelection: ColorSelection.indigo,
      ),
    );
  }
}