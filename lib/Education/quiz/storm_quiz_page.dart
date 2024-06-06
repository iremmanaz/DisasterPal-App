import 'package:first_app/Education/quiz/quiz.dart';
import 'package:first_app/Education/quiz/result_page.dart';
import 'package:flutter/material.dart';

class StormQuizPage extends StatefulWidget {
  @override
  _StormQuizPageState createState() => _StormQuizPageState();
}

class _StormQuizPageState extends State<StormQuizPage> {
  int _currentQuestionIndex = 0;
  List<String> _questions = [
    "1. What is a storm?",
    "2. Which of the following is a type of storm?",
    "3. What conditions are necessary for a thunderstorm to form?",
    "4. What is a tornado?",
    "5. Which scale is used to measure the intensity of a hurricane?",
    "6. What is the difference between a hurricane and a typhoon?",
    "7. What is a storm surge?",
    "8. How can you stay safe during a thunderstorm?",
    "9. What is the eye of a hurricane?",
    "10. What is a blizzard?",
    "11. What is the primary cause of storm-related flooding?",
    "12. Which of the following is a common effect of severe storms?",
    "13. How can you prepare for a hurricane?",
    "14. What is a derecho?",
    "15. What are isobars on a weather map?",
    "16. What is the role of a barometer in weather prediction?",
    "17. What is the main difference between a storm watch and a storm warning?",
    "18. What is hail?",
    "19. What is the safest place to be during a tornado?",
    "20. What is a storm shelter?"
  ];

  final List<List<String>> _choices = [
    [
      "A calm and sunny day",
      "A disturbance in the atmosphere with strong winds and precipitation",
      "A type of cloud formation",
      "A seasonal weather pattern"
    ],
    ["Hurricane", "Earthquake", "Tsunami", "Drought"],
    [
      "Warm, moist air",
      "A source of lift",
      "Unstable atmospheric conditions",
      "All of the above"
    ],
    [
      "A large wave caused by an underwater earthquake",
      "A rotating column of air that extends from a thunderstorm to the ground",
      "A type of cloud formation",
      "A type of precipitation"
    ],
    ["Richter Scale", "Saffir-Simpson Scale", "Beaufort Scale", "Fujita Scale"],
    [
      "There is no difference",
      "Hurricanes occur in the Atlantic and Northeast Pacific, while typhoons occur in the Northwest Pacific",
      "Hurricanes are stronger than typhoons",
      "Typhoons are stronger than hurricanes"
    ],
    [
      "A rise in sea level caused by a storm",
      "A type of strong wind",
      "Heavy rainfall during a storm",
      "The calm center of a storm"
    ],
    [
      "Stay indoors and avoid electrical appliances",
      "Go outside and enjoy the rain",
      "Stand under a tree for shelter",
      "Swim in the nearest body of water"
    ],
    [
      "The outermost part of the storm",
      "The calm center of a hurricane",
      "The most dangerous part of a hurricane",
      "The area with the heaviest rainfall"
    ],
    [
      "A severe snowstorm with strong winds and low visibility",
      "A type of thunderstorm",
      "A type of hurricane",
      "A weather phenomenon involving hail"
    ],
    ["Heavy rainfall", "Strong winds", "Storm surge", "All of the above"],
    ["Power outages", "Flooding", "Wind damage", "All of the above"],
    [
      "Stock up on emergency supplies",
      "Create an evacuation plan",
      "Secure your home",
      "All of the above"
    ],
    [
      "A long-lived windstorm",
      "A type of hurricane",
      "A rotating column of air",
      "A severe snowstorm"
    ],
    [
      "Lines of equal temperature",
      "Lines of equal pressure",
      "Lines of equal rainfall",
      "Lines of equal humidity"
    ],
    [
      "To measure temperature",
      "To measure atmospheric pressure",
      "To measure wind speed",
      "To measure rainfall"
    ],
    [
      "A storm watch indicates that conditions are favorable for a storm, while a storm warning means a storm is imminent or occurring",
      "A storm watch is more severe than a storm warning",
      "A storm warning is issued after a storm has passed",
      "There is no difference"
    ],
    [
      "Frozen rain",
      "Snowflakes",
      "Ice pellets that form in thunderstorms",
      "A type of wind"
    ],
    [
      "In an open field",
      "In a car",
      "In a basement or storm shelter",
      "Under a bridge"
    ],
    [
      "A place to take shelter during a storm",
      "A type of building designed to withstand storms",
      "A portable device used to predict storms",
      "A location for storing storm-related equipment"
    ]
  ];

  final List<int> _correctAnswers = [
    1,
    0,
    3,
    1,
    1,
    1,
    0,
    0,
    1,
    0,
    3,
    3,
    3,
    0,
    1,
    1,
    0,
    2,
    2,
    0
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
        title: Text('Storm Quiz',
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
