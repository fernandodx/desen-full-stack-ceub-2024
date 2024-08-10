import 'package:app2/home.dart';
import 'package:app2/models/color_selection.dart';
import 'package:flutter/material.dart';

import 'theme.dart';
import 'util.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final brightness = View.of(context).platformDispatcher.platformBrightness;
    TextTheme textTheme = createTextTheme(context, "Nunito Sans", "Nunito Sans");

    MaterialTheme theme = MaterialTheme(textTheme);
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: brightness == Brightness.light ? theme.light() : theme.dark(),
      home: Home(
        changeTheme: (useLightMode) {},
        changeColor: (value) {},
        title: "Teste",
        colorSelection: ColorSelection.indigo,
      ),
    );
  }
}
