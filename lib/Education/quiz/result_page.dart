import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final int total;
  final List<String> questions;
  final List<int> selectedAnswers;
  final List<int> correctAnswers;
  final List<List<String>> choices;

  Result({
    required this.score,
    required this.total,
    required this.questions,
    required this.selectedAnswers,
    required this.correctAnswers,
    required this.choices,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz Result',
            style: TextStyle(color: Colors.white)),
        backgroundColor: const Color.fromARGB(255, 49, 49, 49),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: questions.length,
          itemBuilder: (context, index) {
            return Card(
              color: selectedAnswers[index] == correctAnswers[index]
                  ? Colors.green
                  : Colors.red,
              child: ListTile(
                title: Text(questions[index]),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Your answer: ${choices[index][selectedAnswers[index]]}',
                      style: TextStyle(
                        color: selectedAnswers[index] == correctAnswers[index]
                            ? Colors.white
                            : Colors.black,
                      ),
                    ),
                    if (selectedAnswers[index] != correctAnswers[index])
                      Text(
                        'Correct answer: ${choices[index][correctAnswers[index]]}',
                        style: TextStyle(color: Colors.white),
                      ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
