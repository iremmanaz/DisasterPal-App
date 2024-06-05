import 'package:first_app/features_page.dart';
import 'package:first_app/sign%20up%20and%20log%20in/signup_page.dart';
import 'package:flutter/material.dart';
import 'user_data.dart'; // Import the UserData class and registeredUsers list

class LoginPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page",
            style: TextStyle(color: Color.fromARGB(255, 255, 255, 255))),
        backgroundColor: const Color.fromARGB(255, 49, 49, 49),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'C:/Users/iremm/Desktop/flutter_projects/first_app/images/logo.png',
                  width: 300,
                  height: 300,
                ),
                SizedBox(height: 0),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                      labelText: 'Email',
                      border: OutlineInputBorder(),
                      labelStyle: TextStyle(color: Colors.white),
                    ),
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: passwordController,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      border: OutlineInputBorder(),
                      labelStyle: TextStyle(color: Colors.white),
                    ),
                    obscureText: true,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    if (_isValidCredentials()) {
                      Navigator.pushNamed(context, '/features');
                    } else {
                      // Show an error message or dialog
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text('Invalid Credentials',
                                style: TextStyle(
                                    color: const Color.fromARGB(255, 0, 0, 0))),
                            content: Text(
                                'Please enter valid email and password.',
                                style: TextStyle(
                                    color: const Color.fromARGB(255, 0, 0, 0))),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () => Navigator.of(context).pop(),
                                child: Text('OK',
                                    style: TextStyle(
                                        color: const Color.fromARGB(
                                            255, 0, 0, 0))),
                              ),
                            ],
                          );
                        },
                      );
                    }
                  },
                  child: Text('Log In',
                      style:
                          TextStyle(color: const Color.fromARGB(255, 0, 0, 0))),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 255, 205, 56),
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          10), // Kare şeklini burada belirliyoruz
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () => Navigator.pushNamed(context, '/signup'),
                  child: Text('No account? Sign up here!',
                      style: TextStyle(
                          color: const Color.fromARGB(255, 255, 255, 255))),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  bool _isValidCredentials() {
    for (UserData user in registeredUsers) {
      if (user.email == emailController.text &&
          user.password == passwordController.text) {
        return true; // Valid credentials
      }
    }
    return false; // Invalid credentials
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
      routes: {
        '/features': (context) => FeaturesPage(),
        '/signup': (context) => SignupPage(),
      },
    );
  }
}
