import 'package:first_app/Education/quiz/quiz.dart';
import 'package:first_app/Education/quiz/result_page.dart';
import 'package:flutter/material.dart';

class AvalanchesQuizPage extends StatefulWidget {
  @override
  _AvalanchesQuizPageState createState() => _AvalanchesQuizPageState();
}

class _AvalanchesQuizPageState extends State<AvalanchesQuizPage> {
  int _currentQuestionIndex = 0;
  List<String> _questions = [
    "1. What is an avalanche?",
    "2. Which factor is most likely to trigger an avalanche?",
    "3. What is the most dangerous type of avalanche?",
    "4. Which layer in the snowpack is typically responsible for causing avalanches?",
    "5. What time of day do avalanches most commonly occur?",
    "6. What is a terrain trap in the context of avalanches?",
    "7. What are the signs of avalanche danger?",
    "8. What should you do if caught in an avalanche?",
    "9. Which equipment is essential for avalanche safety?",
    "10. What does an avalanche transceiver do?",
    "11. What is the role of a probe in avalanche rescue?",
    "12. How can trees affect an avalanche?",
    "13. What is a cornice in relation to avalanches?",
    "14. Which factor does not contribute to avalanche risk?",
    "15. What is the safest way to cross a slope that may be prone to avalanches?",
    "16. What is the main purpose of an avalanche airbag?",
    "17. What should be avoided when traveling in avalanche-prone areas?",
    "18. What does the term 'avalanche mitigation' refer to?",
    "19. Which of the following is a natural trigger of avalanches?",
    "20. What is a slab avalanche?"
  ];

  final List<List<String>> _choices = [
    [
      "A sudden release of snow, ice, and rocks down a mountain slope",
      "A type of mountain found in cold regions",
      "A weather pattern involving heavy snowfall",
      "A method of skiing"
    ],
    [
      "A loud noise",
      "A change in temperature",
      "Heavy snowfall",
      "All of the above"
    ],
    [
      "Slab avalanche",
      "Loose snow avalanche",
      "Wet avalanche",
      "Ice avalanche"
    ],
    [
      "The topmost layer",
      "A weak layer buried beneath stronger layers",
      "The bottom layer",
      "The layer closest to the ground"
    ],
    ["Morning", "Afternoon", "Evening", "Night"],
    [
      "A feature that increases the severity of an avalanche",
      "A device used to prevent avalanches",
      "A safety feature designed to stop an avalanche",
      "A type of equipment used in avalanche rescue"
    ],
    [
      "Recent avalanche activity",
      "Cracks in the snowpack",
      "A whoompf sound",
      "All of the above"
    ],
    [
      "Try to swim to the surface",
      "Stay still and wait for rescue",
      "Dig yourself deeper",
      "None of the above"
    ],
    ["Avalanche transceiver", "GPS device", "Cell phone", "Compass"],
    [
      "Sends a distress signal to satellites",
      "Receives weather updates",
      "Helps locate buried avalanche victims",
      "Warns of impending avalanches"
    ],
    [
      "To dig out buried victims",
      "To detect movement under the snow",
      "To locate victims under the snow",
      "To provide oxygen to buried victims"
    ],
    [
      "Increase its speed",
      "Stop it completely",
      "Have no effect",
      "Slow it down or stop it"
    ],
    [
      "A type of avalanche",
      "A mass of snow overhanging a ridge",
      "A safety device",
      "A rescue technique"
    ],
    ["Slope angle", "Snow temperature", "Wind speed", "The color of the snow"],
    [
      "Straight down the slope",
      "In a zigzag pattern",
      "One person at a time",
      "In a group for safety"
    ],
    [
      "To provide air to breathe",
      "To float on top of the avalanche",
      "To send a GPS signal",
      "To alert rescue teams"
    ],
    [
      "Steep slopes",
      "Areas with sparse vegetation",
      "Areas below freezing point",
      "All of the above"
    ],
    [
      "Predicting when and where an avalanche will occur",
      "Taking steps to reduce the impact of avalanches",
      "Studying avalanches after they occur",
      "None of the above"
    ],
    ["Snowmobiles", "Skiing", "Heavy snowfall", "Explosives"],
    [
      "An avalanche that occurs on flat terrain",
      "A release of a cohesive layer of snow",
      "An avalanche consisting only of loose snow",
      "A small avalanche that is triggered by animals"
    ]
  ];

  final List<int> _correctAnswers = [
    0,
    3,
    0,
    1,
    1,
    0,
    3,
    0,
    0,
    2,
    2,
    3,
    1,
    3,
    2,
    1,
    0,
    1,
    2,
    1
  ];

  List<int> _selectedAnswers = [];

  int _score = 0;

  void _answerQuestion(int selectedAnswer) {
    _selectedAnswers.add(selectedAnswer);
    if (selectedAnswer == _correctAnswers[_currentQuestionIndex]) {
      _score++;
    }
    setState(() {
      _currentQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avalanches Quiz',
            style: TextStyle(color: Color.fromARGB(255, 255, 255, 255))),
        backgroundColor: const Color.fromARGB(255, 49, 49, 49),
      ),
      body: _currentQuestionIndex < _questions.length
          ? Quiz(
              question: _questions[_currentQuestionIndex],
              choices: _choices[_currentQuestionIndex],
              onAnswer: _answerQuestion,
              currentQuestionIndex: _currentQuestionIndex,
              selectedAnswers: _selectedAnswers,
              correctAnswers: _correctAnswers,
            )
          : Result(
              score: _score,
              total: _questions.length,
              questions: _questions,
              selectedAnswers: _selectedAnswers,
              correctAnswers: _correctAnswers,
              choices: _choices,
            ),
    );
  }
}
