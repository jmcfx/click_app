import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomElevatedButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final Color backgroundColor;
  final double height;
  final Color textColor;
  final bool isTrue;

  const CustomElevatedButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.backgroundColor = Colors.blue,
    this.height = 47,
    this.textColor = Colors.white,
    required this.isTrue,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor:
            isTrue
                ? backgroundColor
                : Theme.of(context).buttonTheme.colorScheme!.onPrimary,
        minimumSize: Size.fromHeight(height.r),
      
      ),
      onPressed: onPressed,

      child: Text(text, style: TextStyle(color: textColor)),
    );
  }
}
