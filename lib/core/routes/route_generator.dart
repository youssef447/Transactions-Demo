import 'package:flutter/material.dart';

import '../../features/home/home_page.dart';
import 'app_routes.dart';
import 'route_navigation_helper.dart';

abstract class RouteGenerator {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    //final args = settings.arguments as Map<String, dynamic>? ?? {};
    final routeName = settings.name;

    switch (routeName) {
      case AppRoutes.home:
        return RouteNavigationHelper.buildPageRoute(
          const HomePage(),
          PageTransitionType.fade,
        );

      default:
        return RouteNavigationHelper.buildPageRoute(
          Scaffold(
              body: SafeArea(
            child: Center(child: Text('No route defined for $routeName')),
          )),
          PageTransitionType.fade,
        );
    }
  }
}
