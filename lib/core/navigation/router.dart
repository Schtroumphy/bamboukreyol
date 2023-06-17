import 'package:bamboukreyol/features/home/my_home_page.dart';
import 'package:go_router/go_router.dart';

import '../../features/login/login_page.dart';

// GoRouter configuration
final router = GoRouter(
  initialLocation: '/',
  routes: _routes,
);

final _routes = [
  GoRoute(
    path: '/',
    builder: (context, state) => const LoginPage(),
  ),
  GoRoute(
    path: '/login',
    name: LoginPage.routeName,
    builder: (context, state) => const LoginPage(),
  ),
  GoRoute(
    path: '/home',
    name: MyHomePage.routeName,
    builder: (context, state) => const MyHomePage(),
  ),
];