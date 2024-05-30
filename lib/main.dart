import 'package:flutter/material.dart';
import 'login_page.dart';
import 'signup_page.dart';
import 'features_page.dart';
import 'psychological_help_page.dart';
import 'chat_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DisasterPal',
      theme: ThemeData(
        primarySwatch: Colors.grey, // Set primarySwatch to grey
        scaffoldBackgroundColor:
            Colors.grey[200], // Set scaffold background color to a lighter grey
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/login': (context) => LoginPage(),
        '/signup': (context) => SignupPage(),
        '/features': (context) => FeaturesPage(),
        '/psychological_help': (context) => PsychologicalHelpPage(),
        '/chat': (context) => ChatPage(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/login');
              },
              child: Text('LOG IN'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 255, 205, 56),
                padding: EdgeInsets.symmetric(horizontal: 100, vertical: 40),
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/signup');
              },
              child: Text('SIGN UP'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 255, 205, 56),
                padding: EdgeInsets.symmetric(horizontal: 100, vertical: 40),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
