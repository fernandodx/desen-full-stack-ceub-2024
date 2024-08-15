import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThemeButton extends StatelessWidget {
  final void Function(bool) changeTheme;

  const ThemeButton({super.key, required this.changeTheme});

  @override
  Widget build(BuildContext context) {
    final isBrigth = Theme.of(context).brightness == Brightness.light;
    return IconButton(
        onPressed: () => changeTheme(!isBrigth),
        icon: isBrigth
            ? Icon(Icons.dark_mode_outlined)
            : Icon(Icons.light_mode_outlined));
  }
}
