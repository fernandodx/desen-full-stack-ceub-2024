import 'package:app_2/models/color_selection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ColorButton extends StatelessWidget {

  final void Function(int) changeColor;
  final ColorSelection colorSelection;


  const ColorButton({
    super.key,
    required this.changeColor,
    required this.colorSelection
  });

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(itemBuilder: (context) {
      return List.generate(ColorSelection.values.length, (index) {
        final currentColor = ColorSelection.values[index];
        return PopupMenuItem(child: Wrap(children: [
          Icon(
            Icons.opacity_outlined,
            color: currentColor.color,
          ),
        ],
          Text(currentColor.label)
        ));
      },);
    });
  }
}
