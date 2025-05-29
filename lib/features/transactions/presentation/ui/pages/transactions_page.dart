import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:transactions_app/core/assets/app_assets.dart';
import 'package:transactions_app/core/theme/data/app_colors.dart';
import 'package:transactions_app/core/widgets/animations/up_down_animation.dart';
import 'package:transactions_app/core/widgets/form_field/app_form_field.dart';
import 'package:transactions_app/core/widgets/spacing/horizontal_space.dart';
import 'package:transactions_app/core/widgets/spacing/vertical_space.dart';
import 'package:transactions_app/features/transactions/presentation/controller/transactions_controller.dart';

import '../../../../../core/theme/data/app_text_style.dart';
import '../../../../../core/widgets/error/app_error_widget.dart';
import '../../../../../core/widgets/loading/default_shimmer.dart';
part '../widgets/transactions_header.dart';
part '../widgets/transactions_list.dart';
part '../widgets/transactions_loading.dart';

class TransactionsPage extends StatelessWidget {
  const TransactionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<TransactionsController>(builder: (controller) {
      if (controller.loading) {
        return const TransactionsLoading();
      }
      if (controller.error.isNotEmpty) {
        return AppErrorWidget(
          errorMessage: controller.error,
          onRetry: () {
            controller.getTransactions();
          },
        );
      }
      return const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: TransactionsHeader()),
          SliverToBoxAdapter(child: VerticalSpace(24)),
          TransactionsList(),
        ],
      );
    });
  }
}
