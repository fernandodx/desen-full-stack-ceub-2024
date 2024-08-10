import 'dart:ui';
import 'package:flutter/material.dart';

enum ColorSelection {
  deepPurple(' Deep Purpler', Colors.deepPurple),
  indigo(' indigo', Colors.indigo),
  lightGreen(' Deep Purpler', Colors.lightGreen);

  const ColorSelection(this.label, this.color);
  final String label;
  final Color color;
}