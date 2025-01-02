import 'package:url_launcher/url_launcher_string.dart';

class UrlLauncher {
  static Future<void> launchURL(String url) async {
    // ignore: only_throw_errors
    if (!await launchUrlString(url)) throw 'Could not launch $url';
  }
}
