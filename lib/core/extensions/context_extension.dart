import 'package:flutter/Material.dart';

extension ContextExtension on BuildContext {
  bool get isDark {
    return Theme.of(this).brightness == Brightness.dark;
  }

  Future<dynamic> navigate(String route, {Object? arguments}) {
    return Navigator.of(this).pushNamed(
      route,
      arguments: arguments,
    );
  }

  navigateTo(String route, {Object? arguments}) {
    Navigator.of(this).pushReplacementNamed(
      route,
      arguments: arguments,
    );
  }

  pop() {
    Navigator.of(this).pop();
  }
}
