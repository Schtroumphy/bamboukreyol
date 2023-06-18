import 'package:firebase_core/firebase_core.dart';

import 'firebase_options_prod.dart';
import 'flavors.dart';
import 'main.dart' as runner;

Future<void> main() async {
  F.appFlavor = Flavor.prod;
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  await runner.main();
}
