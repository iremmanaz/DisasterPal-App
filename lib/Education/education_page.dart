import 'package:flutter/material.dart';

class EducationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Education'),
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
              mainAxisAlignment: MainAxisAlignment
                  .center, // Butonların dikey ortalamaya göre hizalanması
              children: <Widget>[
                SizedBox(height: 100), // Üst boşluk ekledik
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/information');
                  },
                  child: Text('Information'),
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
                  child: Text('Quiz'),
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
