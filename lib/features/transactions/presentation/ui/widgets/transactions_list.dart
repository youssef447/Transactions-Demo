part of '../pages/transactions_page.dart';

class TransactionsList extends GetView<TransactionsController> {
  const TransactionsList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      itemCount: controller.transnactions!.transactions.length,
      itemBuilder: (context, index) {
        final model = controller.transnactions!.transactions[index];
        return Container(
          margin: EdgeInsets.symmetric(horizontal: 34.w),
          padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 14.w),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14.r), color: Colors.white),
          child: Column(
            children: [
              Row(
                children: [
                  SvgPicture.asset(
                    AppAssets.egp,
                    width: 14.w,
                    height: 14.w,
                  ),
                  const HorizontalSpace(8),
                  Text(
                    model.price,
                    style: AppTextStyles.font18Text800(context),
                  ),
                ],
              ),
              const VerticalSpace(12),
              Row(
                children: [
                  SvgPicture.asset(
                    AppAssets.location,
                    width: 14.w,
                    height: 14.w,
                  ),
                  const HorizontalSpace(8),
                  Text(
                    model.location,
                    style: AppTextStyles.font12MoreDarkGreyText400(context),
                  ),
                ],
              ),
              const VerticalSpace(12),
              Row(
                children: [
                  SvgPicture.asset(
                    AppAssets.calendar,
                    width: 14.w,
                    height: 14.w,
                  ),
                  const HorizontalSpace(8),
                  Text(
                    model.date,
                    style: AppTextStyles.font12MoreDarkGreyText400(context),
                  ),
                  const HorizontalSpace(14),
                  SvgPicture.asset(
                    AppAssets.clock,
                    width: 14.w,
                    height: 14.w,
                  ),
                  const HorizontalSpace(8),
                  Text(
                    model.time,
                    style: AppTextStyles.font12MoreDarkGreyText400(context),
                  ),
                ],
              ),
            ],
          ),
        );
      },
      separatorBuilder: (_, __) => const VerticalSpace(14),
    );
  }
}
