import 'package:bamboukreyol/core/constants/route_names.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../flavors.dart';

class MyHomePage extends StatelessWidget {
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
    context.pushNamed(RouteName.loginPage);
  }
}
