import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:transactions_app/core/assets/app_assets.dart';
import 'package:transactions_app/core/theme/data/app_colors.dart';
import 'package:transactions_app/core/theme/data/app_text_style.dart';
import 'package:transactions_app/features/transactions/presentation/ui/pages/transactions_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Widget> tabs = [
    const SizedBox(),
    const SizedBox(),
    const TransactionsPage(),
    const SizedBox()
  ];
  int tabIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          elevation: 0,
          backgroundColor: AppColors.navBar(context),
          type: BottomNavigationBarType.fixed,
          selectedLabelStyle: AppTextStyles.font14Text400(context),
          unselectedLabelStyle: AppTextStyles.font14Text400(context),
          selectedItemColor: AppColors.primary,
          unselectedItemColor: AppColors.darkGrey,
          items: [
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.all(7.5.h),
                child: SvgPicture.asset(
                  AppAssets.home,
                  colorFilter: ColorFilter.mode(
                    tabIndex == 0 ? AppColors.primary : AppColors.lightGrey,
                    BlendMode.srcIn,
                  ),
                ),
              ),
              label: 'الرئيسية',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.all(7.5.h),
                child: SvgPicture.asset(
                  AppAssets.companies,
                  width: 16.w,
                  height: 14.w,
                  colorFilter: ColorFilter.mode(
                    tabIndex == 1 ? AppColors.primary : AppColors.lightGrey,
                    BlendMode.srcIn,
                  ),
                ),
              ),
              label: 'شركاتي',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.all(7.5.h),
                child: SvgPicture.asset(
                  AppAssets.transactions,
                  width: 16.w,
                  height: 14.w,
                  colorFilter: ColorFilter.mode(
                    tabIndex == 2 ? AppColors.primary : AppColors.lightGrey,
                    BlendMode.srcIn,
                  ),
                ),
              ),
              label: 'معاملاتي',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.all(7.5.h),
                child: SvgPicture.asset(
                  AppAssets.policies,
                  width: 16.w,
                  height: 14.w,
                  colorFilter: ColorFilter.mode(
                    tabIndex == 3 ? AppColors.primary : AppColors.lightGrey,
                    BlendMode.srcIn,
                  ),
                ),
              ),
              label: 'السياسات',
            ),
          ],
          currentIndex: tabIndex,
          onTap: (index) {
            setState(() {
              tabIndex = index;
            });
          }),
      body: tabs[tabIndex],
    );
  }
}
