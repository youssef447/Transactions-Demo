part of '../pages/transactions_page.dart';

class TransactionsLoading extends StatelessWidget {
  const TransactionsLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
            child: DefaultShimmer(
                child: Container(
          width: double.infinity,
          height: 230.h,
          decoration: BoxDecoration(
            color: AppColors.primary,
            borderRadius: BorderRadiusDirectional.only(
              bottomStart: Radius.circular(14.r),
              bottomEnd: Radius.circular(14.r),
            ),
          ),
        ))),
        const SliverToBoxAdapter(child: VerticalSpace(24)),
        SliverList.separated(
          itemCount: 6,
          itemBuilder: (_, __) => DefaultShimmer(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 34.w),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14.r),
                  color: Colors.white),
              height: 100.h,
            ),
          ),
          separatorBuilder: (_, __) => const VerticalSpace(14),
        ),
      ],
    );
  }
}
