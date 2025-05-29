import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:transactions_app/core/theme/data/app_text_style.dart';
import 'package:transactions_app/core/widgets/spacing/vertical_space.dart';

class AppErrorWidget extends StatelessWidget {
  final double? height;
  final double? width;
  final String errorMessage;
  final void Function() onRetry;
  const AppErrorWidget({
    super.key,
    this.height,
    this.width,
    required this.onRetry,
    required this.errorMessage,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(8.0.w),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.error,
              size: 55.sp,
              color: Colors.red,
            ),
            const VerticalSpace(15),
            Text(
              'Error, $errorMessage',
              style: AppTextStyles.font14Text400(context),
            ),
            const VerticalSpace(15),
            TextButton.icon(
              onPressed: onRetry,
              icon: Icon(
                Icons.refresh_rounded,
                size: 18.sp,
              ),
              label: Text(
                'Retry',
                style: AppTextStyles.font12MoreDarkGreyText400(context),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
