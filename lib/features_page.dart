import 'package:flutter/material.dart';

class FeaturesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Features',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 49, 49, 49),
      ),
      body: Stack(
        children: [
          Positioned(
            left: 10,
            top: 10,
            child: Image.asset(
              'C:/Users/iremm/Desktop/flutter_projects/first_app/images/logo.png', // Logo dosyanızın yolunu buraya girin
              width: 150,
              height: 150,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(
                  bottom:
                      30), // Butonları daha aşağı çekmek için padding ekledim
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/psychological_help');
                    },
                    child: Text(
                      'Psychological Help',
                      style: TextStyle(
                          color: const Color.fromARGB(255, 0, 0,
                              0)), // Yazı rengini beyaz olarak ayarladım
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 255, 205, 56),
                      padding:
                          EdgeInsets.symmetric(horizontal: 70, vertical: 40),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  SizedBox(height: 10), // Boşlukları artırdım
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/education');
                    },
                    child: Text(
                      'Education',
                      style: TextStyle(
                          color: const Color.fromARGB(255, 0, 0,
                              0)), // Yazı rengini beyaz olarak ayarladım
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 255, 205, 56),
                      padding:
                          EdgeInsets.symmetric(horizontal: 100, vertical: 40),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/location');
                    },
                    child: Text(
                      'Location',
                      style: TextStyle(
                          color: const Color.fromARGB(255, 0, 0,
                              0)), // Yazı rengini beyaz olarak ayarladım
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 255, 205, 56),
                      padding:
                          EdgeInsets.symmetric(horizontal: 105, vertical: 40),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/needs_receiving');
                    },
                    child: Text(
                      'Needs Receiving',
                      style: TextStyle(
                          color: const Color.fromARGB(255, 0, 0,
                              0)), // Yazı rengini beyaz olarak ayarladım
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 255, 205, 56),
                      padding:
                          EdgeInsets.symmetric(horizontal: 80, vertical: 40),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/donation');
                    },
                    child: Text(
                      'Donation',
                      style: TextStyle(
                          color: const Color.fromARGB(255, 0, 0,
                              0)), // Yazı rengini beyaz olarak ayarladım
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 255, 205, 56),
                      padding:
                          EdgeInsets.symmetric(horizontal: 105, vertical: 40),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/forum');
                    },
                    child: Text(
                      'Forum',
                      style: TextStyle(
                          color: const Color.fromARGB(255, 0, 0,
                              0)), // Yazı rengini beyaz olarak ayarladım
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 255, 205, 56),
                      padding:
                          EdgeInsets.symmetric(horizontal: 115, vertical: 40),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
