import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TriviaDisplay extends StatelessWidget {
  const TriviaDisplay({
    super.key,
    required this.numberTrivia,
    required this.textTrivia,
  });

  final String numberTrivia, textTrivia;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Text(
            numberTrivia,
            style: TextStyle(fontSize: 50.sp, fontWeight: FontWeight.bold),
          ),
          Center(
            child: Card(
              elevation: 4,
              margin: EdgeInsets.all(2.r),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.r),
                side: BorderSide(width: 0.5.r),
              ),
              child: Padding(
                padding:  EdgeInsets.all(16.0.r),
                child: Text(
                  textTrivia,
                  style: TextStyle(fontSize: 25.sp),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
