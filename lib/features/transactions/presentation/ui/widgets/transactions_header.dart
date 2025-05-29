part of '../pages/transactions_page.dart';

class TransactionsHeader extends GetView<TransactionsController> {
  const TransactionsHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return UpDownAnimation(
      delay: 0,
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 34.w, vertical: 24.h),
        decoration: BoxDecoration(
          color: AppColors.primary,
          borderRadius: BorderRadiusDirectional.only(
            bottomStart: Radius.circular(14.r),
            bottomEnd: Radius.circular(14.r),
          ),
        ),
        child: Column(
          children: [
            SvgPicture.asset(
              AppAssets.manexEnOmega,
              width: 25.w,
              height: 25.h,
            ),
            const VerticalSpace(24),
            Text(
              'عدد المعاملات الكلي',
              style: AppTextStyles.font16TextPrimary400(context)
                  .copyWith(color: const Color(0xffC9CBD5)),
            ),
            const VerticalSpace(2),
            Text(
              '${controller.transnactions!.numOfTotalTrxs} معاملة',
              style: AppTextStyles.font34TextWhite800(context),
            ),
            const VerticalSpace(24),
            AppFormField(
              backGroundColor: Colors.white,
              hintText: 'فرز المعاملات',
              enabled: false,
              hintStyle: AppTextStyles.font16TextPrimary400(context),
              prefixIcon: SvgPicture.asset(
                AppAssets.filter,
                width: 14.w,
                height: 14.w,
                alignment: Alignment.center,
                colorFilter: const ColorFilter.mode(
                  AppColors.primary,
                  BlendMode.srcIn,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
