import 'package:flutter/material.dart';
import 'package:first_app/Location/location_service.dart';
import 'package:first_app/Location/location_data.dart';
import 'package:geolocator/geolocator.dart';
import 'package:intl/intl.dart';
import 'package:timezone/data/latest.dart' as tz;
import 'package:timezone/timezone.dart' as tz;

class LocationUpdatePage extends StatefulWidget {
  @override
  _LocationUpdatePageState createState() => _LocationUpdatePageState();
}

class _LocationUpdatePageState extends State<LocationUpdatePage> {
  String _currentLocation = 'Loading...';
  final LocationData _locationData = LocationData();

  @override
  void initState() {
    super.initState();
    tz.initializeTimeZones();
    _getLocation();
  }

  Future<void> _getLocation() async {
    try {
      Position position = await LocationService().getCurrentLocation();
      final turkeyTimeZone = tz.getLocation('Europe/Istanbul');
      String dateTime = DateFormat('yyyy-MM-dd – kk:mm')
          .format(tz.TZDateTime.from(DateTime.now(), turkeyTimeZone));
      String location =
          'Lat: ${position.latitude}, Lon: ${position.longitude}\nDate: $dateTime';
      setState(() {
        _currentLocation = location;
        _locationData.addLocation(location);
      });
    } catch (e) {
      setState(() {
        _currentLocation = 'Error: $e';
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
      body: Column(
        children: [
          Expanded(
            child: ListView.separated(
              reverse: true, // Yeni verilerin en üstte görünmesini sağlar
              itemCount: _locationData.getLocations().length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(
                    _locationData.getLocations()[index],
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return Divider(
                  color: Colors.white,
                  thickness: 1,
                );
              },
            ),
          ),
          SizedBox(height: 20),
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
      backgroundColor: Color.fromARGB(255, 49, 49, 49),
    );
  }
}
