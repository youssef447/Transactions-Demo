import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:transactions_app/core/theme/data/app_colors.dart';

abstract class AppTextStyles {
  static TextStyle font14Text400(BuildContext context) => Theme.of(context)
      .textTheme
      .displayMedium!
      .copyWith(fontSize: 14.sp, fontWeight: FontWeight.normal);
  static TextStyle font12MoreDarkGreyText400(BuildContext context) =>
      Theme.of(context).textTheme.displayMedium!.copyWith(
          fontSize: 12.sp,
          fontWeight: FontWeight.normal,
          color: AppColors.moreDarkGrey);

  static TextStyle font16TextPrimary400(BuildContext context) =>
      Theme.of(context).textTheme.displayMedium!.copyWith(
          fontSize: 16.sp,
          fontWeight: FontWeight.normal,
          color: AppColors.primary);
  static TextStyle font16Black800(BuildContext context) =>
      Theme.of(context).textTheme.displayMedium!.copyWith(
            fontSize: 16.sp,
            fontWeight: FontWeight.w800,
          );
  static TextStyle font18Text800(BuildContext context) => Theme.of(context)
      .textTheme
      .displayMedium!
      .copyWith(fontSize: 18.sp, fontWeight: FontWeight.w800);
  static TextStyle font34TextWhite800(BuildContext context) =>
      Theme.of(context).textTheme.displayMedium!.copyWith(
          fontSize: 34.sp, fontWeight: FontWeight.w800, color: Colors.white);

  //Field
  static TextStyle hintStyle(BuildContext context) =>
      Theme.of(context).textTheme.displayMedium!.copyWith(
          fontSize: 14.sp, fontWeight: FontWeight.w100, color: Colors.grey);
  static TextStyle fieldStyle(BuildContext context) => Theme.of(context)
      .textTheme
      .displayMedium!
      .copyWith(fontSize: 14.sp, fontWeight: FontWeight.bold);
}
