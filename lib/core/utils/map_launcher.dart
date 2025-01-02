import 'dart:async';

import 'package:latlong2/latlong.dart';
import 'package:maps_launcher/maps_launcher.dart';

class MapLauncher {
  static void launchFromCoordinates(LatLng coord) {
    unawaited(MapsLauncher.launchCoordinates(coord.latitude, coord.longitude, 'House location'));
  }
}
