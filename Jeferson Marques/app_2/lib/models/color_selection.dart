import 'package:flutter/material.dart';

enum ColorSelection {
  deepPurple('Deep Purple', Colors.deepPurple),
  indigo('Indigo', Colors.indigo),
  orange('Orange', Colors.orange);

  const ColorSelection(this.label, this.color);
  final String label;
  final Color color;
}