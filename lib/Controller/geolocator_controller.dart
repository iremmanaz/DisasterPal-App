import 'package:geolocator/geolocator.dart';

class LocationController {
  Future<Position?> getCurrentLocation() async {
    try {
      // Konum servislerini kontrol et
      bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
      if (!serviceEnabled) {
        // Servisler kapalıysa hata döndür
        throw 'Konum servisleri kapalı.';
      }

      // Konum izinlerini kontrol et
      LocationPermission permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        // İzin yoksa izin iste
        permission = await Geolocator.requestPermission();
        if (permission == LocationPermission.denied) {
          // Kullanıcı izni vermediyse hata döndür
          throw 'Konum izni reddedildi.';
        }
      }

      // Konum bilgilerini al
      return await Geolocator.getCurrentPosition();
    } catch (e) {
      print('Hata: $e');
      return null; // Hata durumunda null döndür
    }
  }
}
