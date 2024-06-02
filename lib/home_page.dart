import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 49, 49, 49),
      body: Stack(
        children: <Widget>[
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // Ana içerik buraya gelecek
              ],
            ),
          ),
          Positioned(
            top: 60,
            left: 0,
            right: 0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'C:/Users/iremm/Desktop/flutter_projects/first_app/images/logo.png',
                  width: 400,
                  height: 400,
                ),
                SizedBox(height: 10),
              ],
            ),
          ),
          Positioned(
            top: 340,
            left: 0,
            right: 0,
            child: Center(
              child: Text(
                'DisasterPal',
                style: TextStyle(
                  fontFamily: 'Arista Pro',
                  color: Colors.white,
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Positioned(
            top: 450,
            right: 50,
            child: Column(
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/login');
                  },
                  child: Text('LOG IN',
                      style: TextStyle(
                        color: Colors.black, // Text color
                        fontWeight: FontWeight.bold, // Bold text
                      )),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 255, 205, 56),
                    padding:
                        EdgeInsets.symmetric(horizontal: 125, vertical: 40),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          10), // Kare şeklini burada belirliyoruz
                    ),
                  ),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/signup');
                  },
                  child: Text('SIGN UP',
                      style: TextStyle(
                        color: Colors.black, // Text color
                        fontWeight: FontWeight.bold, // Bold text
                      )),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 255, 205, 56),
                    padding:
                        EdgeInsets.symmetric(horizontal: 120, vertical: 40),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          10), // Kare şeklini burada belirliyoruz
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
