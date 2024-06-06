import 'package:first_app/Forum/avalanches_forum_page.dart';
import 'package:first_app/Forum/eathquake_forum_page.dart';
import 'package:first_app/Forum/fire_forum_page.dart';
import 'package:first_app/Forum/flood_forum_page.dart';
import 'package:first_app/Forum/landslide_forum_page.dart';
import 'package:first_app/Forum/storm_forum_page.dart';
import 'package:flutter/material.dart';

class ForumPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Forum',
            style: TextStyle(color: Color.fromARGB(255, 255, 255, 255))),
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
          Padding(
            padding:
                const EdgeInsets.only(top: 110), // Butonları aşağı kaydırma
            child: Center(
              child: GridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 30,
                crossAxisSpacing: 20,
                padding: EdgeInsets.all(20),
                children: <Widget>[
                  _buildImageButton(context, EathquakeForumPage(), 'Earthquake',
                      'C:/Users/iremm/Desktop/flutter_projects/first_app/images/earthquake.jpg'),
                  _buildImageButton(context, FloodForumPage(), 'Flood',
                      'C:/Users/iremm/Desktop/flutter_projects/first_app/images/flood.jpg'),
                  _buildImageButton(context, LandslideForumPage(), 'Landslide',
                      'C:/Users/iremm/Desktop/flutter_projects/first_app/images/landslide.jpeg'),
                  _buildImageButton(
                      context,
                      AvalanchesForumPage(),
                      'Avalanches',
                      'C:/Users/iremm/Desktop/flutter_projects/first_app/images/snowslide.jpeg'),
                  _buildImageButton(context, StormForumPage(), 'Storm',
                      'C:/Users/iremm/Desktop/flutter_projects/first_app/images/storm.jpg'),
                  _buildImageButton(context, FireForumPage(), 'Fire',
                      'C:/Users/iremm/Desktop/flutter_projects/first_app/images/fire.jpg'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildImageButton(
      BuildContext context, Widget page, String title, String imagePath) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      },
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(imagePath),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
            textAlign: TextAlign.center,
          ),
        ),
      ),
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
    );
  }
}
