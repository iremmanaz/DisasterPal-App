class LocationData {
  final List<String> _locations = [];

  void addLocation(String location) {
    if (_locations.length >= 20) {
      _locations.removeAt(0);
    }
    _locations.insert(0, location); // En yeni konum en üste eklenir
  }

  List<String> getLocations() {
    return List.unmodifiable(_locations);
  }
}
