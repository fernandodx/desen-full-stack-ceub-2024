import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ThemeButton extends StatelessWidget {
  final void Function(bool) changeTheme;
  const ThemeButton({super.key, required this.changeTheme});

  @override
  Widget build(BuildContext context) {

    final isBright = Theme.of(context).brightness == Brightness.light;
    return IconButton(onPressed: () => changeTheme(!isBright), icon: isBright ? Icon(Icons.dark_mode_outlined ): Icon(Icons.light_mode_outlined));
  }
}
