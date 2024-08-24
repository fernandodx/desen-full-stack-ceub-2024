import 'package:app2/models/color_selection.dart';
import 'package:flutter/material.dart';
import 'home.dart';
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

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // Retrieves the default theme for the platform
    //TextTheme textTheme = Theme.of(context).textTheme;

    // Use with Google Fonts package to use downloadable fonts
    TextTheme textTheme = createTextTheme(context, "ABeeZee", "ABeeZee");

    MaterialTheme theme = MaterialTheme(textTheme);
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        themeMode: themeMode,
        darkTheme: theme.dark(),
        theme: theme.light(),
        home: Home(
          changeTheme: (useLightMode) {
            setState(() {
              print("Cliquei changeTheme.");
              themeMode = useLightMode ? ThemeMode.light : ThemeMode.dark;
            });
          },
          changeColor: (color) {
          },
          title: "Delicias",
          colorSelection: colorSelection,
        ) //const MyHomePage(title: 'Flutter Demo Home Page'),
        );
  }
}
