import 'package:flutter/material.dart';

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
            style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
          ),
          Center(
            child: Card(
              elevation: 4,
              margin: EdgeInsets.all(2),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
                side: BorderSide(width: 0.5),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  textTrivia,
                  style: TextStyle(fontSize: 25),
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
