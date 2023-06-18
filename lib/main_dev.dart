import 'package:firebase_core/firebase_core.dart';

import 'firebase_options_dev.dart';
import 'flavors.dart';
import 'main.dart' as runner;

Future<void> main() async {
  F.appFlavor = Flavor.dev;
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  await runner.main();
}
