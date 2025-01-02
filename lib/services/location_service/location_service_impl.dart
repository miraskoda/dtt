import 'package:dtt/services/location_service/location_service.dart';
import 'package:location/location.dart';

class LocationServiceImpl implements LocationService {
  final Location _location = Location();

  @override
  Future<LocationData?> getCurrentLocation() async {
    bool serviceEnabled;
    PermissionStatus permissionGranted;

    serviceEnabled = await _location.serviceEnabled();
    if (!serviceEnabled) {
      serviceEnabled = await _location.requestService();
      if (!serviceEnabled) {
        return null;
      }
    }

    permissionGranted = await _location.hasPermission();
    if (permissionGranted == PermissionStatus.denied) {
      permissionGranted = await _location.requestPermission();
      if (permissionGranted != PermissionStatus.granted) {
        return null;
      }
    }

    return _location.getLocation();
  }

  @override
  Stream<LocationData> getLocationStream() {
    return _location.onLocationChanged;
  }

  @override
  Future<LocationData?> getLocation() {
    return _location.getLocation();
  }
}
