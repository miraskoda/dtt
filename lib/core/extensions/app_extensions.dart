import 'package:dtt/core/app_config.dart';

extension DttImageExtensions on String {
  String asDttImage() {
    return "${AppConfig.dttUrl}$this";
  }
}
