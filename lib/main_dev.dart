import 'package:flutter/cupertino.dart';

import 'app.dart';
import 'flavors.dart';

Future<void> main() async {
  F.appFlavor = Flavor.dev;
  runApp(const App());
}
