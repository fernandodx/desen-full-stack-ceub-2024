import 'package:flutter/material.dart';

enum ColorSelection {
  deepPurple("deep Purple", Colors.deepPurple),
  indigo("indigo", Colors.indigo),
  lighGreen("Light Green", Colors.lightGreen);

  final String label;
  final Color color;

  const ColorSelection(this.label, this.color);
}