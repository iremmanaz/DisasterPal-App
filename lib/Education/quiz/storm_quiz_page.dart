import 'package:first_app/Education/quiz/quiz.dart';
import 'package:first_app/Education/quiz/result_page.dart';
import 'package:flutter/material.dart';

class StormQuizPage extends StatefulWidget {
  @override
  _StormQuizPageState createState() => _StormQuizPageState();
}

class _StormQuizPageState extends State<StormQuizPage> {
  int _currentQuestionIndex = 0;
  final List<String> _questions = [
    "1. What is a storm?",
    "2. Which type of storm is characterized by a rotating column of air that touches both the cloud base and the Earth's surface?",
    "3. What is the main difference between a hurricane and a typhoon?",
    "4. What is the eye of a hurricane?",
    "5. Which of the following is a common effect of storms?",
    "6. What does a storm surge involve?",
    "7. What conditions are required for the formation of a thunderstorm?",
    "8. What is a blizzard?",
    "9. How are storms classified?",
    "10. What safety measure is recommended when a tornado warning is issued?",
    "11. What is a squall line?",
    "12. What is the Saffir-Simpson Hurricane Wind Scale used for?",
    "13. What causes a storm?",
    "14. What is a thunderstorm?",
    "15. Which of these storms is classified by rotating winds?",
    "16. What is a hurricane called in the Western Pacific?",
    "17. What measures the intensity of a hurricane?",
    "18. What is the eye of a hurricane?",
    "19. Which phenomenon occurs when warm air rises and cold air sinks, creating a cycling effect?",
    "20. What is a supercell?"
  ];

  final List<List<String>> _choices = [
    [
      "A clear weather pattern characterized by sunshine",
      "A disturbance of the atmosphere with strong winds and usually rain, snow, or other precipitation",
      "A long period of drought affecting a large area",
      "An earthquake that triggers a tsunami"
    ],
    ["Hurricane", "Tornado", "Thunderstorm", "Blizzard"],
    [
      "Their size",
      "Their location",
      "The season they occur",
      "Their wind speeds"
    ],
    [
      "The most destructive part of the hurricane",
      "The center of the hurricane, characterized by a calm weather",
      "A satellite tool used to track hurricanes",
      "The outer edge of the hurricane"
    ],
    [
      "Power outages",
      "Flooding",
      "Damage to buildings and infrastructure",
      "All of the above"
    ],
    [
      "A sudden drop in atmospheric pressure",
      "An increase in storm intensity",
      "A rising of the sea as a result of atmospheric pressure changes and wind associated with a storm",
      "A surge of lightning activity"
    ],
    [
      "Cold temperatures and snow",
      "Moisture, unstable air, and a lifting mechanism",
      "Dry air and high winds",
      "High temperatures and clear skies"
    ],
    [
      "A tropical storm with heavy rainfall",
      "A severe snowstorm with strong winds and low visibility",
      "A heatwave that occurs in winter",
      "A storm with heavy thunder and lightning"
    ],
    [
      "By the damage they cause",
      "By their wind speed and potential for damage",
      "By the amount of precipitation they drop",
      "By the temperature during the storm"
    ],
    [
      "Go outside and confirm the tornado's location",
      "Seek shelter immediately, preferably in a basement or storm cellar",
      "Open all windows to equalize pressure",
      "Evacuate the town or city"
    ],
    [
      "A row of bushes planted to reduce wind speed",
      "A long line of heavy thunderstorms that can form ahead of a cold front",
      "The boundary where two squalls meet",
      "A graphical tool used to predict squalls"
    ],
    [
      "To measure the size of a hurricane",
      "To determine the potential for flooding from a hurricane",
      "To classify hurricanes based on their wind speed",
      "To predict the path of hurricanes"
    ],
    [
      "A sudden temperature change in the Earth's core",
      "The movement of tectonic plates in the Earth's crust",
      "Differences in air pressure",
      "The shaking of the surface of the Earth resulting from a sudden release of energy in the Earth's lithosphere"
    ],
    [
      "A storm characterized by snow",
      "A storm with thunder and lightning",
      "A strong windstorm without precipitation",
      "A heavy downpour of rain without thunder"
    ],
    ["Tornado", "Hurricane", "Both A and B", "Hailstorm"],
    ["Typhoon", "Cyclone", "Tsunami", "Tornado"],
    [
      "The Enhanced Fujita scale",
      "The Richter scale",
      "The Saffir-Simpson Hurricane Wind Scale",
      "The Beaufort scale"
    ],
    [
      "The most destructive part of the hurricane",
      "The center of the hurricane, characterized by calm weather",
      "The outer edge of the hurricane",
      "A term used to describe the vision of a hurricane"
    ],
    ["Convection", "Evaporation", "Condensation", "Sublimation"],
    [
      "A type of battery",
      "A highly organized storm characterized by a deep rotating updraft",
      "The final stage of a thunderstorm",
      "A cloud formation preceding a tornado"
    ]
  ];

  final List<int> _correctAnswers = [
    1,
    2,
    2,
    2,
    4,
    3,
    2,
    2,
    2,
    2,
    2,
    3,
    3,
    2,
    3,
    1,
    3,
    2,
    2,
    2
  ];

  int _score = 0;

  void _answerQuestion(int selectedAnswer) {
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
            )
          : Result(score: _score, total: _questions.length),
    );
  }
}
