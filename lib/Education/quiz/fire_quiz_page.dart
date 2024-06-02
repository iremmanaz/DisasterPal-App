import 'package:first_app/Education/quiz/quiz.dart';
import 'package:first_app/Education/quiz/result_page.dart';
import 'package:flutter/material.dart';

class FireQuizPage extends StatefulWidget {
  @override
  _FireQuizPageState createState() => _FireQuizPageState();
}

class _FireQuizPageState extends State<FireQuizPage> {
  int _currentQuestionIndex = 0;
  final List<String> _questions = [
    "1. What is the most common cause of wildfires?",
    "2. Which of these elements is not part of the fire triangle?",
    "3. What is a controlled burn?",
    "4. Which type of fire extinguisher is most suitable for a grease fire?",
    "5. What does the term 'flashpoint' refer to?",
    "6. What is a firebreak?",
    "7. What is the main purpose of a smoke detector?",
    "8. In fire safety, what does 'PASS' stand for when using a fire extinguisher?",
    "9. Which of the following materials is most fire-resistant?",
    "10. What is a backdraft?",
    "11. How can homeowners reduce the risk of fire?",
    "12. What should you do if your clothes catch on fire?",
    "13. Which natural ecosystem depends on periodic fires for renewal?",
    "14. What is the leading cause of home fire deaths?",
    "15. What phenomenon causes the rapid spread of fire through the upper layer of air, due to intense heat?",
    "16. During a wildfire, what should you do if you are trapped in your car?",
    "17. Which class of fire involves flammable gases?",
    "18. What is the best way to put out a campfire safely?",
    "19. Which firefighting method involves removing the fuel source?",
    "20. What does the term 'defensible space' refer to in wildfire preparedness?"
  ];

  final List<List<String>> _choices = [
    [
      "Lightning strikes",
      "Campfires left unattended",
      "Cigarettes",
      "All of the above"
    ],
    ["Fuel", "Oxygen", "Water", "Heat"],
    [
      "A wildfire that firefighters are able to manage",
      "An intentional fire set to prevent larger fires",
      "A fire used to cook food in the wilderness",
      "A technique for putting out fires with minimal water"
    ],
    ["Water-based", "Foam", "Dry chemical", "CO2"],
    [
      "The temperature at which a liquid boils",
      "The temperature at which something catches fire spontaneously",
      "The minimum temperature at which a liquid forms a vapor above its surface in sufficient concentration that it can be ignited",
      "The point in a fire at which it becomes uncontrollable"
    ],
    [
      "A technique used by firefighters to rest during long wildfires",
      "A natural barrier that stops the progress of a fire",
      "An artificial barrier created to halt the spread of a fire",
      "A break in the continuity of fuel for a fire provided by roads or rivers"
    ],
    [
      "To extinguish small fires automatically",
      "To detect and alert individuals to the presence of smoke",
      "To purify air in case of smoke",
      "To act as a security device against intruders"
    ],
    [
      "Pull, Aim, Squeeze, Sweep",
      "Push, Aim, Spray, Stay",
      "Pull, Align, Squeeze, Stay",
      "Push, Align, Spray, Sweep"
    ],
    ["Wood", "Plastic", "Steel", "Concrete"],
    [
      "A sudden intake of air before a fire ignites",
      "A technique used to ventilate a burning building",
      "An explosive event caused by the introduction of oxygen into an oxygen-depleted environment",
      "The movement of air that follows a moving fire truck"
    ],
    [
      "Regularly cleaning the chimney",
      "Installing and maintaining smoke detectors",
      "Keeping a fire extinguisher on hand",
      "All of the above"
    ],
    [
      "Run to get help",
      "Throw water on yourself",
      "Stop, Drop, and Roll",
      "Wave your arms to put out the flames"
    ],
    ["Tropical rainforests", "Coral reefs", "Grasslands", "Deciduous forests"],
    [
      "Cooking equipment",
      "Heating equipment",
      "Electrical malfunction",
      "Smoking materials"
    ],
    ["Flashover", "Backdraft", "Jet fire", "Roll-over"],
    [
      "Leave the car and run",
      "Drive as fast as possible",
      "Stay in the car, close windows and vents, and cover yourself with a wool blanket",
      "Honk the horn continuously for help"
    ],
    ["Class A", "Class B", "Class C", "Class D"],
    [
      "Let it burn out on its own",
      "Cover it with dry leaves",
      "Douse it with water, then stir and douse again until cold",
      "Bury it with soil"
    ],
    [
      "Cooling",
      "Smothering",
      "Starvation",
      "Breaking the chemical chain reaction"
    ],
    [
      "A safety zone for firefighters",
      "An area cleared of all flammable vegetation and materials around a structure",
      "A firefighting technique involving defensive positions",
      "A legal term for property that can be defended in court"
    ]
  ];

  final List<int> _correctAnswers = [
    4,
    3,
    2,
    2,
    3,
    2,
    2,
    1,
    4,
    3,
    4,
    3,
    3,
    1,
    1,
    3,
    2,
    3,
    3,
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
        title: Text('Fire Quiz'),
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
