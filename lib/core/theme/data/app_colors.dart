import 'package:flutter/material.dart';
import 'package:transactions_app/core/extensions/context_extension.dart';

abstract class AppColors {
  //constants
  static const Color primary = Color(0xff2D4190);
  static const Color secondary = Color(0xffE35C9C);
  static const Color positive = Color(0xff28BE89);
  static const Color negative = Color(0xffE65151);
  static const Color lightGrey = Color(0xffC9CBD5);
  static const Color darkGrey = Color(0xff9CA0B0);
  static const Color moreDarkGrey = Color(0xff6A6D7E);
  static const Color darkBackground = Color(0xff081028);
  static const Color background = Color(0XffF6F7F9);

  //theme based
  static Color navBar(BuildContext context) =>
      context.isDark ? darkBackground : Colors.white;
  static Color inverse(BuildContext context) =>
      Theme.of(context).colorScheme.onSurface;
}
