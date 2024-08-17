import 'package:app2/home.dart';
import 'package:app2/models/color_selection.dart';
import 'package:flutter/material.dart';
import 'util.dart';
import 'theme.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool useLightMode = true;

  void changeTheme(bool isLightMode) {
    setState(() {
      useLightMode = isLightMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    final brightness = View.of(context).platformDispatcher.platformBrightness;

    TextTheme textTheme = createTextTheme(context, "Inter", "Inter");

    MaterialTheme theme = MaterialTheme(textTheme);
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: useLightMode ? theme.light() : theme.dark(),
      home: Home(
        changeTheme: changeTheme,
        changeColor: (value) {},
        title: "Teste",
        colorSelection: ColorSelection.indigo,
      ),
    );
  }
}