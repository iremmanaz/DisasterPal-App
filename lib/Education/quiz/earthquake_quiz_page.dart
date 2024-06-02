import 'package:first_app/Education/quiz/quiz.dart';
import 'package:first_app/Education/quiz/result_page.dart';
import 'package:flutter/material.dart';

class EarthquakeQuizPage extends StatefulWidget {
  @override
  _EarthquakeQuizPageState createState() => _EarthquakeQuizPageState();
}

class _EarthquakeQuizPageState extends State<EarthquakeQuizPage> {
  int _currentQuestionIndex = 0;
  List<String> _questions = [
    "1. What is an earthquake?",
    "2. Which scale is used to measure the magnitude of an earthquake?",
    "3. What is the point on the Earth's surface directly above an earthquake's focus called?",
    "4. Which layer of the Earth is most associated with the occurrence of earthquakes?",
    "5. What do seismologists use to detect and record earthquakes?",
    "6. What is a fault?",
    "7. What type of seismic waves arrive first, thereby being the fastest?",
    "8. What is liquefaction?",
    "9. Which of the following is a secondary effect of earthquakes?",
    "10. The point within the Earth where an earthquake originates is known as the:",
    "11. What is the term for smaller earthquakes that follow the main shock?",
    "12. Which of these countries is not in the Pacific Ring of Fire, known for frequent earthquakes and volcanic eruptions?",
    "13. What is the main cause of tsunamis?",
    "14. Which of the following materials would seismic waves travel fastest through?",
    "15. What does the term 'magnitude' refer to in the context of an earthquake?",
    "16. In which layer of the Earth do earthquakes occur?",
    "17. What phenomenon often occurs after large earthquakes in oceanic regions?",
    "18. Which of the following areas is least likely to experience an earthquake?",
    "19. What is the Ring of Fire?",
    "20. Which technology is primarily used to study the Earth's interior and detect earthquakes?"
  ];

  final List<List<String>> _choices = [
    [
      "The sudden release of energy in the Earth's atmosphere causing wind storms",
      "The movement of tectonic plates in the Earth's crust",
      "The shaking of the surface of the Earth resulting from a sudden release of energy in the Earth's lithosphere",
      "A sudden temperature change in the Earth's core"
    ],
    ["Kelvin Scale", "Richter Scale", "Beaufort Scale", "Mohs Scale"],
    ["Epicenter", "Hypocenter", "Ground Zero", "Apex"],
    ["Crust", "Mantle", "Outer Core", "Inner Core"],
    ["Barometer", "Hydrometer", "Seismometer", "Anemometer"],
    [
      "A mistake in Earth's geological composition",
      "A fracture in the Earth's crust where movement has occurred",
      "A large hole in the Earth's surface",
      "An area of the ocean floor where tsunamis originate"
    ],
    ["Love waves", "Rayleigh waves", "P-waves", "S-waves"],
    [
      "The process of turning solid rock into magma",
      "The hardening of lava into volcanic rock",
      "The conversion of water into steam during an earthquake",
      "The phenomenon where saturated soil temporarily loses its strength and behaves like a liquid due to the shaking of an earthquake"
    ],
    ["Tsunamis", "Ground shaking", "Faulting", "Aftershocks"],
    ["Epicenter", "Hypocenter", "Centerpoint", "Earthquake origin"],
    ["Foreshocks", "Aftershocks", "Microshocks", "Preshocks"],
    ["Japan", "Chile", "Australia", "Indonesia"],
    [
      "High winds",
      "Underwater earthquakes",
      "Lunar gravitational pull",
      "Coastal erosion"
    ],
    ["Water", "Air", "Solid rock", "Sand"],
    [
      "The damage it causes",
      "The depth at which it occurs",
      "The amount of energy released",
      "The duration of the earthquake"
    ],
    ["Troposphere", "Stratosphere", "Lithosphere", "Mesosphere"],
    ["El Niño", "Tsunamis", "Hurricanes", "Tornadoes"],
    [
      "Near a plate boundary",
      "In the middle of a tectonic plate",
      "On a known fault line",
      "At a subduction zone"
    ],
    [
      "A circle of volcanoes around the Arctic Circle",
      "A series of gyms in a popular fitness chain",
      "A major area in the basin of the Pacific Ocean where many earthquakes and volcanic eruptions occur",
      "A theoretical concept in astrophysics"
    ],
    ["RADAR", "LIDAR", "Seismography", "Sonar"]
  ];

  final List<int> _correctAnswers = [
    2,
    1,
    0,
    0,
    2,
    1,
    2,
    3,
    0,
    1,
    1,
    2,
    1,
    2,
    2,
    2,
    1,
    1,
    0,
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
        title: Text('Earthquake Quiz'),
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
