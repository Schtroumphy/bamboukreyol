import 'package:flutter/material.dart';

import 'core/navigation/router.dart';
import 'core/theming/theme.dart';
import 'flavors.dart';

class App extends StatelessWidget {

  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: F.title,
      theme: lightTheme,
      routerConfig: router,
    );
  }

}
