import 'package:first_app/Education/information/information_page.dart';
import 'package:first_app/Education/quiz/quiz_page.dart';
import 'package:first_app/Forum/avalanches_forum_page.dart';
import 'package:first_app/Forum/forum_data.dart';
import 'package:first_app/Forum/forum_page.dart';
import 'package:first_app/const.dart';
import 'package:first_app/sign%20up%20and%20log%20in/User_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gemini/flutter_gemini.dart';
import 'sign up and log in/login_page.dart';
import 'sign up and log in/signup_page.dart';
import 'features_page.dart';
import 'psychological_help_page.dart';
import 'home_page.dart';
import 'Education/education_page.dart';
import 'Location/location_page.dart';
import 'needs_receiving_page.dart';
import 'donation_page.dart';

void main() {
  Gemini.init(
    apiKey: GEMINI_API_KEY,
  );
  runApp(MyApp());
}

/*// Example usage
  login('iremmanaz@hotmail.com', '123456');
  addComment('This is a comment from İrem.');
  addComment('Another comment from İrem.');
  logout();

  login('elifkarabay@gmail.com', '987654');
  addComment('This is a comment from Elif.');
  logout();

  // Display all comments
  for (var comment in forumComments) {
    print(
        '${comment.name} ${comment.surname} (${comment.title}): ${comment.comment}');
  }*/

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
        '/education': (context) => EducationPage(),
        '/location': (context) => LocationPage(),
        '/needs_receiving': (context) => NeedsReceivingPage(),
        '/donation': (context) => DonationPage(),
        '/information': (context) => InformationPage(),
        '/quiz': (context) => QuizPage(),
        '/forum': (context) => ForumPage(),
        '/avalanches_forum': (context) =>
            AvalanchesForumPage(), // Yeni route ekleyin
      },
    );
  }
}
