import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../flavors.dart';
import '../login/login_page.dart';

class MyHomePage extends StatelessWidget {
  static const String routeName = "/HomePage";

  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(F.title),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              'Hello ${F.title}',
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () {
                _onButtonPressed(context);
              },
              child: const Text("Go to login"),
            )
          ],
        ),
      ),
    );
  }

  _onButtonPressed(BuildContext context) {
    if (!context.mounted) return;
    context.pushNamed(LoginPage.routeName);
  }
}
