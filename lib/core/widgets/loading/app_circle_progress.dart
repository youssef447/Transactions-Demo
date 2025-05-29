import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../theme/data/app_colors.dart';

class AppCircleProgress extends StatelessWidget {
  final double? width, height;
  const AppCircleProgress({super.key, this.width, this.height});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: width ?? 65.w,
        height: height ?? 65.w,
        child: CircularProgressIndicator(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          strokeWidth: 2.0,
          color: AppColors.primary,
        ),
      ),
    );
  }
}
