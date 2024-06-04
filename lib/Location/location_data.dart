import 'package:shared_preferences/shared_preferences.dart';

class LocationData {
  final List<String> _locations = [];
  final String _prefsKey =
      'saved_locations'; // SharedPreferences anahtarını tanımlayın

  LocationData() {
    _loadLocationsFromPrefs(); // Uygulama başladığında kayıtlı konumları yükle
  }

  Future<void> _loadLocationsFromPrefs() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String>? savedLocations = prefs.getStringList(_prefsKey);
    if (savedLocations != null) {
      _locations.addAll(savedLocations);
    }
  }

  Future<void> addLocation(String location) async {
    if (_locations.length >= 20) {
      _locations.removeAt(0);
    }
    _locations.add(location);
    await _saveLocationsToPrefs(); // Konumu kaydedin
  }

  Future<void> _saveLocationsToPrefs() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setStringList(_prefsKey, _locations);
  }

  List<String> getLocations() {
    return List.unmodifiable(_locations);
  }
}
