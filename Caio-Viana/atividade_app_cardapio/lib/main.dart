import 'package:atividade2_sala/home.dart';
import 'package:flutter/material.dart';
import 'models/models/color_selection.dart';
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
    TextTheme textTheme = createTextTheme(context, "Abril Fatface", "Abel");

    MaterialTheme theme = MaterialTheme(textTheme);
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      themeMode: themeMode,
      darkTheme: theme.light(),
      theme: brightness == Brightness.light ? theme.light() : theme.dark(),
      home: Home(
          changeTheme: (useLightMode) {},
          changeColor: (value) {},
          title: "Teste",
          colorSelection: ColorSelection.indigo),
    );
  }
}
