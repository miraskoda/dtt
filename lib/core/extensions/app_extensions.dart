import 'package:dtt/core/app_config.dart';
import 'package:intl/intl.dart';

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
