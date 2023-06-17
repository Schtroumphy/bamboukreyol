import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../home/my_home_page.dart';

class LoginPage extends StatelessWidget {
  static const String routeName = "/LoginPage";

  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          context.pushNamed(MyHomePage.routeName);
        },
        child: const Text("Login Page"),
      ),
    );
  }
}
