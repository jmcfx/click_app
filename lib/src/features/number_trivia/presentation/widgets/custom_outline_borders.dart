import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

OutlineInputBorder customOutlineInputBorder({
  Color color = Colors.blueAccent,
  double width = 2,
}) {
  return OutlineInputBorder(

    borderRadius: BorderRadius.circular(16.r),
    borderSide: BorderSide(color: color, width: width.r),
  );
}
