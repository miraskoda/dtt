import 'package:dtt/core/constants/constants.dart';
import 'package:dtt/theme/app_themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class MapWidget extends StatelessWidget {
  /// Genetral DTT map widget for reuse
  const MapWidget({
    required this.coordinates,
    super.key,
  });
  final LatLng coordinates;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(AppConstants.kNormalBorderRadius),
        child: FlutterMap(
          options: MapOptions(
            initialCenter: coordinates,
            initialZoom: 10,
          ),
          children: [
            TileLayer(
              urlTemplate: 'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
            ),
            MarkerLayer(
              markers: [
                Marker(
                  width: 80,
                  height: 80,
                  point: coordinates,
                  child: const Icon(
                    Icons.location_pin,
                    size: 40,
                    color: AppThemes.brandRedColor,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
