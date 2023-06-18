import 'package:bamboukreyol/core/constants/route_names.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../core/services/auth_service.dart';
import '../../flavors.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  final User? user = Auth().currentUser;

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
              'Hello ${F.title} - User : ${user?.email}',
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
