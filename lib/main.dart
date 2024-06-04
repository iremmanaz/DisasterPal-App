import 'package:first_app/Education/information/information_page.dart';
import 'package:first_app/Education/quiz/quiz_page.dart';
import 'package:flutter/material.dart';
import 'sign up and log in/login_page.dart';
import 'sign up and log in/signup_page.dart';
import 'features_page.dart';
import 'psychological_help_page.dart';
import 'chat_page.dart';
import 'home_page.dart';
import 'Education/education_page.dart';
import 'Location/location_page.dart';
import 'needs_receiving_page.dart';
import 'donation_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DisasterPal',
      theme: ThemeData(
        primarySwatch: Colors.grey,
        scaffoldBackgroundColor: Color.fromARGB(255, 49, 49, 49),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/login': (context) => LoginPage(),
        '/signup': (context) => SignupPage(),
        '/features': (context) => FeaturesPage(),
        '/psychological_help': (context) => PsychologicalHelpPage(),
        '/chat': (context) => ChatPage(),
        '/education': (context) => EducationPage(),
        '/location': (context) => LocationPage(),
        '/needs_receiving': (context) => NeedsReceivingPage(),
        '/donation': (context) => DonationPage(),
        '/information': (context) => InformationPage(),
        '/quiz': (context) => QuizPage(),
      },
    );
  }
}
