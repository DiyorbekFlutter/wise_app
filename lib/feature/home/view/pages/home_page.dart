import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wise_app/core/style/app_colors.dart';
import 'package:wise_app/core/style/svg_icons.dart';
import 'package:wise_app/data/entity/country_model.dart';
import 'package:wise_app/data/entity/transaction_model.dart';
import 'package:wise_app/feature/home/view/pages/transaction_page.dart';
import 'package:wise_app/feature/home/view/widgets/transaction_buttons.dart';
import 'package:wise_app/feature/home/view_model/home_vm.dart';

import 'home_details_page.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final HomeVM watch = ref.watch(homeVM);
    final HomeVM read = ref.read(homeVM);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80.h),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: SizedBox(
            height: 80.h,
            child: Padding(
              padding: REdgeInsets.all(16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 24.r,
                    backgroundColor: AppColors.c163300O08,
                    child: Text(
                      "MA",
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 18.sp,
                        color: AppColors.c163300,
                        fontWeight: FontWeight.w900
                      ),
                    ),
                  ),
                  const Spacer(),
                  SizedBox(
                    height: 33.h,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: AppColors.c9FE870,
                        borderRadius: BorderRadius.circular(100.r)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Center(
                          child: Text(
                            r"Earn $115",
                            style: TextStyle(
                              fontFamily: "Inter",
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  24.horizontalSpace,
                  CircleAvatar(
                    radius: 24.r,
                    backgroundColor: AppColors.c163300O08,
                    child: SvgIcons.eye,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          32.verticalSpace,
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    "Welcome to Wise",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontFamily: "Inter",
                      fontSize: 30.sp,
                      fontWeight: FontWeight.w600
                    ),
                  ),
                ),
                CircleAvatar(
                  radius: 24.r,
                  backgroundColor: AppColors.c163300O08,
                  child: SvgIcons.investments,
                ),
              ],
            ),
          ),
          26.verticalSpace,
          SizedBox(
            height: 40.h,
            child: ListView.separated(
              itemCount: read.categories.length,
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) => 12.horizontalSpace,
              padding: EdgeInsets.symmetric(horizontal: 16.h),
              itemBuilder: (context, index) => InkWell(
                onTap: () => read.switchCategoryIndex(index),
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100.r),
                    color: index == watch.currentCategoryIndex ? AppColors.c9FE870 : AppColors.c0E0F0C1F
                  ),
                  child: Padding(
                    padding: REdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      children: [
                        (read.categories[index].first as SvgIcon).style(dimension: 24.dg),
                        10.horizontalSpace,
                        Text(
                          read.categories[index][1],
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontFamily: "Inter",
                            color: AppColors.c163300,
                            fontWeight: FontWeight.w600
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          20.verticalSpace,
          SizedBox(
            height: 208.h,
            child: ListView.separated(
              itemCount: countries.length,
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) => 24.horizontalSpace,
              itemBuilder: (context, index) {
                final CountryModel model = countries[index];
                return InkWell(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomeDetailsPage())
                  ),
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  child: SizedBox(
                    width: 208.w,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.r),
                        color: AppColors.c163300O08
                      ),
                      child: Padding(
                        padding: REdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 24.r,
                                  backgroundColor: AppColors.c163300O08,
                                  child: model.flag,
                                ),
                                10.horizontalSpace,
                                const Expanded(
                                  child: Text(
                                    "GBP",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600
                                    ),
                                  ),
                                )
                              ],
                            ),
                            const Spacer(),
                            Text(
                              model.price.toString(),
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 28.sp,
                                fontFamily: "Inter",
                                fontWeight: FontWeight.w600
                              ),
                            ),
                            Text(
                              model.name,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontFamily: "Inter",
                                fontWeight: FontWeight.w400
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          40.verticalSpace,
          Padding(
            padding: REdgeInsets.symmetric(horizontal: 16),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "Transactions",
                  style: TextStyle(
                    fontSize: 26.sp,
                    fontFamily: "Inter",
                    fontWeight: FontWeight.w600
                  ),
                ),
                const Spacer(),
                InkWell(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const TransactionPage())
                  ),
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  child: Text(
                    "See all",
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontFamily: "Inter",
                      color: AppColors.c163300,
                      fontWeight: FontWeight.w600,
                      decoration: TextDecoration.underline,
                      decorationColor: AppColors.c163300,
                    ),
                  ),
                ),
              ],
            ),
          ),
          16.verticalSpace,
          TransactionButtons(
            onPressed: () {},
            transactionModel: const TransactionModel(
              icon: SvgIcons.arrowUp,
              title: "Sarah Davies",
              subTitle: "Paid · Today",
              price: "50.00 GBP",
            ),
          ),
          TransactionButtons(
            onPressed: () {},
            transactionModel: const TransactionModel(
              icon: SvgIcons.plus,
              title: "Sarah Davies",
              subTitle: "Added · Today",
              price: "65.50 GBP",
            ),
          ),
        ],
      ),
    );
  }
}
