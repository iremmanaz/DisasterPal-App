import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final int total;

  Result({required this.score, required this.total});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Quiz Completed!',
            style: TextStyle(fontSize: 36.0, fontWeight: FontWeight.bold),
          ),
          Text(
            'Your score is $score out of $total',
            style: TextStyle(fontSize: 24.0),
          ),
          SizedBox(height: 20.0),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text('Restart Quiz'),
          ),
        ],
      ),
    );
  }
}
