import 'package:flutter/material.dart';

class Quiz extends StatelessWidget {
  final String question;
  final List<String> choices;
  final Function(int) onAnswer;
  final int currentQuestionIndex;
  final List<int> selectedAnswers;
  final List<int> correctAnswers;

  Quiz({
    required this.question,
    required this.choices,
    required this.onAnswer,
    required this.currentQuestionIndex,
    required this.selectedAnswers,
    required this.correctAnswers,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              question,
              style: TextStyle(
                  fontSize: 24.0,
                  color: Colors.white), // Set text color to white
              textAlign: TextAlign.center,
            ),
          ),
          ...choices.asMap().entries.map((entry) {
            int idx = entry.key;
            String val = entry.value;
            return Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
              child: ElevatedButton(
                onPressed: () => onAnswer(idx),
                child: Text(val,
                    style: TextStyle(
                        color: Colors.black)), // Set button text color to black
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      selectedAnswers.length > currentQuestionIndex &&
                              selectedAnswers[currentQuestionIndex] == idx
                          ? (selectedAnswers[currentQuestionIndex] ==
                                  correctAnswers[currentQuestionIndex]
                              ? Colors.green
                              : Colors.red)
                          : null,
                ),
              ),
            );
          }).toList(),
        ],
      ),
    );
  }
}
