import 'package:flutter/material.dart';
import 'User_data.dart'; // Import the UserData class

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Sign Up Page",
          style: TextStyle(color: Colors.white), // AppBar yazı rengi
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 50,
              ),
              Image.asset(
                'C:/Users/iremm/Desktop/flutter_projects/first_app/images/logo.png',
                width: 300,
                height: 300,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                    labelStyle:
                        TextStyle(color: Colors.white), // Label yazı rengi
                  ),
                  style:
                      TextStyle(color: Colors.white), // Input alanı yazı rengi
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: passwordController,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(),
                    labelStyle:
                        TextStyle(color: Colors.white), // Label yazı rengi
                  ),
                  obscureText: true,
                  style:
                      TextStyle(color: Colors.white), // Input alanı yazı rengi
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: confirmPasswordController,
                  decoration: InputDecoration(
                    labelText: 'Confirm Password',
                    border: OutlineInputBorder(),
                    labelStyle:
                        TextStyle(color: Colors.white), // Label yazı rengi
                  ),
                  obscureText: true,
                  style:
                      TextStyle(color: Colors.white), // Input alanı yazı rengi
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  if (_validateInputs()) {
                    _signUp();
                    Navigator.pushNamed(context, '/login');
                  } else {
                    _showErrorDialog();
                  }
                },
                child: Text('Sign Up',
                    style:
                        TextStyle(color: Colors.black)), // Sign Up yazı rengi
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 255, 205, 56),
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        10), // Kare şeklini burada belirliyoruz
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  bool _validateInputs() {
    return emailController.text.isNotEmpty &&
        passwordController.text.isNotEmpty;
  }

  void _signUp() {
    String email = emailController.text;
    String password = passwordController.text;
    UserData newUser = UserData(email: email, password: password);
    registeredUsers.add(newUser);
  }

  void _showErrorDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'Error',
            style: TextStyle(
                color: const Color.fromARGB(
                    255, 0, 0, 0)), // AlertDialog yazı rengi
          ),
          content: Text(
            'Email and Password cannot be empty.',
            style: TextStyle(
                color: const Color.fromARGB(
                    255, 0, 0, 0)), // AlertDialog içerik yazı rengi
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text(
                'OK',
                style: TextStyle(
                    color: const Color.fromARGB(
                        255, 9, 9, 9)), // AlertDialog düğme yazı rengi
              ),
            ),
          ],
        );
      },
    );
  }
}
