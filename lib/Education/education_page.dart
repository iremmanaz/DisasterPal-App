import 'package:flutter/material.dart';

class EducationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Education',
          style: TextStyle(color: Colors.white), // Yazı rengi
        ),
        backgroundColor: const Color.fromARGB(255, 49, 49, 49),
      ),
      body: Stack(
        children: [
          Positioned(
            top: 10,
            left: 10,
            child: Image.asset(
              'C:/Users/iremm/Desktop/flutter_projects/first_app/images/logo.png',
              width: 150,
              height: 150,
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 100), // Üst boşluk ekledik
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/information');
                  },
                  child: Text(
                    'Information',
                    style: TextStyle(
                        color:
                            const Color.fromARGB(255, 0, 0, 0)), // Yazı rengi
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 255, 205, 56),
                    padding:
                        EdgeInsets.symmetric(horizontal: 100, vertical: 60),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
                SizedBox(height: 100), // Boşluk ekledik
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/quiz');
                  },
                  child: Text(
                    'Quiz',
                    style: TextStyle(
                        color:
                            const Color.fromARGB(255, 0, 0, 0)), // Yazı rengi
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 255, 205, 56),
                    padding:
                        EdgeInsets.symmetric(horizontal: 125, vertical: 60),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
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
