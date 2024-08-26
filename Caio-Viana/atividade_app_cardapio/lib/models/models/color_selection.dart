import 'package:flutter/material.dart';

enum ColorSelection {
deepPurle('Deep Purple', Colors.deepPurple),
  indigo('indigo', Colors.indigo),
  lightGreen('light Green',Colors.lightGreen);

const ColorSelection(this.label, this.color);
final String label;
final Color color;
}

