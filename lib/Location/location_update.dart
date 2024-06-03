import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:intl/intl.dart';
import 'package:timezone/data/latest.dart' as tz;
import 'package:timezone/timezone.dart' as tz;

class LocationUpdatePage extends StatefulWidget {
  @override
  _LocationUpdatePageState createState() => _LocationUpdatePageState();
}

class _LocationUpdatePageState extends State<LocationUpdatePage> {
  String _location = 'Loading...';

  @override
  void initState() {
    super.initState();
    tz.initializeTimeZones();
    _getLocation();
  }

  Future<void> _getLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
        forceAndroidLocationManager:
            true, // Force using Android Location Manager
      );

      final turkeyTimeZone = tz.getLocation('Europe/Istanbul');
      String dateTime = DateFormat('yyyy-MM-dd – kk:mm')
          .format(tz.TZDateTime.from(DateTime.now(), turkeyTimeZone));

      setState(() {
        _location =
            'Lat: ${position.latitude}, Lon: ${position.longitude}\nDate: $dateTime';
      });
    } catch (e) {
      setState(() {
        _location = 'Error: $e';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Location Update',
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
        backgroundColor: const Color.fromARGB(255, 49, 49, 49),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _location,
              style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
              textAlign: TextAlign.center,
            ),
            Spacer(),
            GestureDetector(
              onTap: _getLocation,
              child: Container(
                width: 300,
                height: 60,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 205, 56),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Center(
                  child: Text(
                    'Update Location',
                    style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
