import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:segundo_app_flutter/home.dart';
import 'package:segundo_app_flutter/models/color_selection.dart';
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


  @override
  Widget build(BuildContext context) {
    final brightness = View.of(context).platformDispatcher.platformBrightness;

    TextTheme textTheme = createTextTheme(context, "Roboto", "Montserrat");

    MaterialTheme theme = MaterialTheme(textTheme);
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      themeMode: themeMode,
      darkTheme: theme.dark(),
      theme: theme.light(),
      home: Home(changeTheme: (useLightMode) {}, changeColor: (value) {}, title: "App de Comida", colorSelection: ColorSelection.indigo,),
    );
  }
}
