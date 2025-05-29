import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../theme/data/app_text_style.dart';

/// Objectives: This file is responsible for providing the default no data gif.
class NoData extends StatelessWidget {
  final double? height;
  final double? width;
  final String msg;
  final String? img;
  const NoData({
    super.key,
    this.height,
    this.width,
    this.img,
    required this.msg,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        msg.tr,
        style: AppTextStyles.font18Text800(context),
      ),
    );
  }
}
