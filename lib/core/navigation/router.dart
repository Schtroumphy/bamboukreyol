import 'package:bamboukreyol/core/constants/route_names.dart';
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
    builder: (context, state) => LoginPage(),
  ),
  GoRoute(
    path: '/login',
    name: RouteName.loginPage,
    builder: (context, state) => LoginPage(),
  ),
  GoRoute(
    path: '/home',
    name: RouteName.homePage,
    builder: (context, state) => MyHomePage(),
  ),
];