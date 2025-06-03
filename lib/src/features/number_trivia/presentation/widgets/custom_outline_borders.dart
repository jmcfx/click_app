import 'package:flutter/material.dart';

OutlineInputBorder customOutlineInputBorder({
  Color color = Colors.blueAccent,
  double width = 2,
}) {
  return OutlineInputBorder(

    borderRadius: BorderRadius.circular(16),
    borderSide: BorderSide(color: color, width: width),
  );
}
