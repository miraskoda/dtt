import 'package:location/location.dart';

abstract class LocationService {
  Location get location;
  Future<LocationData?> getCurrentLocation();
  Future<LocationData?> getLocation();
  Stream<LocationData> getLocationStream();
}
