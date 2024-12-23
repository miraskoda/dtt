import 'package:dtt/bootstrap.dart';

Future<void> main() async {
  await bootstrap(
    callbackInitialization: () async {
      // try {
      //   await Firebase.initializeApp(
      //     options: DefaultFirebaseOptions.currentPlatform,
      //   );
      // } catch (e) {}
    },
  );
}
