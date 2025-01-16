import 'dart:math' show asin, cos, sqrt;

import 'package:dtt/core/app_config.dart';
import 'package:intl/intl.dart';
import 'package:location/location.dart';

extension DttImageExtensions on String {
  String asDttImage() {
    return '${AppConfig.dttUrl}$this';
  }
}

extension DttIntExtensions on int {
  String asDTTPrice() {
    final formatter = NumberFormat.currency(
      locale: 'en_US',
      symbol: r'$',
      decimalDigits: 0,
    );
    return formatter.format(this);
  }
}

extension DttDistanceMeasure on LocationData {
  String getDistance({
    required double latitude,
    required double longitude,
  }) {
    return '${_calculateDistance(latitude, longitude, this.latitude!, this.longitude!).toStringAsFixed(0)}km';
  }
}

double _calculateDistance(double lat1, double lon1, double lat2, double lon2) {
  const p = 0.017453292519943295;
  const c = cos;
  final a = 0.5 - c((lat2 - lat1) * p) / 2 + c(lat1 * p) * c(lat2 * p) * (1 - c((lon2 - lon1) * p)) / 2;
  return 12742 * asin(sqrt(a));
}
