import 'package:dtt/bootstrap.dart';
import 'package:dtt/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  await bootstrap(
    callbackInitialization: () async {
      try {
        await Firebase.initializeApp(
          options: DefaultFirebaseOptions.currentPlatform,
        );
      } catch (_) {}
    },
  );
}
