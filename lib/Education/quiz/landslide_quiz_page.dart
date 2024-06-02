import 'package:first_app/Education/quiz/quiz.dart';
import 'package:first_app/Education/quiz/result_page.dart';
import 'package:flutter/material.dart';

class LandslideQuizPage extends StatefulWidget {
  @override
  _LandslideQuizPageState createState() => _LandslideQuizPageState();
}

class _LandslideQuizPageState extends State<LandslideQuizPage> {
  int _currentQuestionIndex = 0;
  final List<String> _questions = [
    "1. What is a landslide?",
    "2. What can trigger a landslide?",
    "3. Which type of area is most susceptible to landslides?",
    "4. What is the role of vegetation in preventing landslides?",
    "5. What is a debris flow?",
    "6. How can human activities contribute to the risk of landslides?",
    "7. What is the main difference between a rockslide and a rockfall?",
    "8. What does the term 'slope stabilization' refer to?",
    "9. What are 'retaining walls' used for in landslide mitigation?",
    "10. Why are landslides common after wildfires?",
    "11. What is a landslide?",
    "12. Which factor can trigger a landslide?",
    "13. What role does water play in landslides?",
    "14. What is a mudflow?",
    "15. How can human activities contribute to landslides?",
    "16. What is the main difference between a landslide and a rockfall?",
    "17. What is one way to minimize landslide risk to a property?",
    "18. Which of the following areas is least likely to experience a landslide?",
    "19. What is a debris flow?",
    "20. What technology is used to monitor potential landslide areas?"
  ];

  final List<List<String>> _choices = [
    [
      "A sudden snowfall on a mountain",
      "The movement of rock, earth, or debris down a sloped section of land",
      "An earthquake that occurs underground",
      "A large wave caused by an underwater earthquake"
    ],
    ["Heavy rain", "Earthquakes", "Volcanic activity", "All of the above"],
    [
      "Flat terrains with no vegetation",
      "Slopes that have been previously disturbed",
      "Areas with dense, deep-rooted trees",
      "Urban areas with no nearby water sources"
    ],
    [
      "It adds weight to potentially unstable slopes",
      "The roots stabilize the soil and absorb water",
      "It attracts wildlife that can dig and anchor the soil",
      "Vegetation has no role in preventing landslides"
    ],
    [
      "A slow movement of soil down a slope",
      "A fast-moving landslide that involves a mixture of water, rock, soil, and vegetation",
      "The aftermath of a volcanic eruption",
      "A controlled flow of debris set up to prevent landslides"
    ],
    [
      "By planting trees on slopes",
      "Through construction and development on unstable slopes",
      "By studying and monitoring landslide-prone areas",
      "Human activities do not contribute to the risk of landslides"
    ],
    [
      "A rockslide occurs underwater, while a rockfall does not",
      "A rockslide involves the movement of rock on a slope, while a rockfall is the free fall of rocks",
      "A rockfall is larger than a rockslide",
      "There is no difference; they are the same phenomenon"
    ],
    [
      "The natural process of slopes becoming stable over time",
      "Engineering and vegetation strategies used to make slopes less susceptible to landslides",
      "The study of slopes and their angles",
      "A type of insurance policy for homeowners in landslide-prone areas"
    ],
    [
      "To retain water from reaching landslide-prone areas",
      "To prevent debris from spreading onto roads and properties",
      "To support the soil and prevent it from sliding down slopes",
      "To decorate landscapes and provide aesthetic value"
    ],
    [
      "Because the water used to extinguish fires saturates the soil",
      "Because fires can destabilize the ground by burning away vegetation that holds the soil in place",
      "Because the heat from fires causes rocks to expand and crack",
      "Wildfires have no effect on the likelihood of landslides"
    ],
    [
      "A rapid flow of snow down a sloping surface",
      "The movement of rock, earth, or debris down a sloped section of land",
      "An earthquake that triggers a tsunami",
      "The process of land drying out and cracking"
    ],
    ["Heavy rainfall", "Earthquakes", "Volcanic activity", "All of the above"],
    [
      "It can lubricate soil and rock, making slopes more susceptible to landslides",
      "It dries out the land, making it more stable",
      "It acts as a barrier to landslides",
      "None of the above"
    ],
    [
      "A slow movement of soil down a hill",
      "A rapid flow of water mixed with soil and rock",
      "The flow of mud during a volcanic eruption",
      "A type of landslide that occurs underwater"
    ],
    [
      "Deforestation",
      "Construction",
      "Irrigation practices",
      "All of the above"
    ],
    [
      "The material involved in the movement",
      "The speed at which the material moves",
      "Rockfalls involve liquid, whereas landslides do not",
      "Landslides can only occur on mountains"
    ],
    [
      "Planting more trees on the slope",
      "Building a water collection basin at the top of the slope",
      "Removing all vegetation from the slope",
      "Covering the slope with a large tarp"
    ],
    [
      "Steep mountainous areas with loose soil",
      "Flat areas with dense vegetation",
      "Areas along riverbanks",
      "Slopes where recent wildfires have occurred"
    ],
    [
      "The movement of large rocks down a slope",
      "Water flowing through a debris-filled river",
      "A fast-moving type of landslide consisting of water mixed with soil and other materials",
      "The flow of trash in urban waterways"
    ],
    [
      "Seismic sensors",
      "Satellite imagery",
      "Groundwater measurement tools",
      "All of the above"
    ]
  ];
  final List<int> _correctAnswers = [
    1,
    3,
    1,
    1,
    1,
    1,
    1,
    1,
    2,
    1,
    1,
    3,
    1,
    2,
    4,
    3,
    2,
    2,
    3,
    3
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
        title: Text('Landslide Quiz'),
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
