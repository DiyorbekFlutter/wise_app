import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wise_app/core/style/app_colors.dart';
import 'package:wise_app/core/style/svg_icons.dart';
import 'package:wise_app/feature/home/view/pages/gbp_account_details.dart';
import 'package:wise_app/feature/home/view/widgets/home_details_circular_button.dart';
import 'package:wise_app/feature/home/view/widgets/transaction_buttons.dart';
import 'package:wise_app/feature/home/view_model/home_datails_vm.dart';

class HomeDetailsPage extends ConsumerWidget {
  const HomeDetailsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final HomeDetailsVM read = ref.read(homeDetailsVM);

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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () => Navigator.pop(context),
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    child: CircleAvatar(
                      radius: 24.r,
                      backgroundColor: AppColors.c163300O08,
                      child: SvgIcons.close.style(color: AppColors.grey),
                    ),
                  ),
                  CircleAvatar(
                    radius: 24.r,
                    backgroundColor: AppColors.c163300O08,
                    child: SvgIcons.threeDots.style(color: AppColors.grey),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: DefaultTabController(
        length: 2,
        child: Column(
          children: [
            20.verticalSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 24.r,
                  backgroundColor: AppColors.c163300O08,
                  child: SvgIcons.unitedStates,
                ),
                10.horizontalSpace,
                Text(
                  "GBP balance",
                  style: TextStyle(
                    color: AppColors.grey,
                    fontSize: 16.sp
                  ),
                )
              ],
            ),
            10.verticalSpace,
            Text(
              "10.00 GBP",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 36.sp,
                fontWeight: FontWeight.bold,
                letterSpacing: 1
              ),
            ),
            12.verticalSpace,
            Center(
              child: Padding(
                padding: REdgeInsets.symmetric(horizontal: 16),
                child: InkWell(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const GBPAccountDetails())
                  ),
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: AppColors.c163300O08,
                      borderRadius: BorderRadius.circular(100.r)
                    ),
                    child: Padding(
                      padding: REdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          16.horizontalSpace,
                          SvgIcons.bank,
                          16.horizontalSpace,
                          const Text("23-08-01 · 43800276"),
                          16.horizontalSpace,
                          SvgIcons.chevronRight,
                          16.horizontalSpace,
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            40.verticalSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                HomeDetailsCircularButton(
                  icon: SvgIcons.plus,
                  text: "Add",
                  onPressed: (){},
                ),
                HomeDetailsCircularButton(
                  icon: SvgIcons.convert,
                  text: "Convert",
                  onPressed: (){},
                ),
                HomeDetailsCircularButton(
                  icon: SvgIcons.arrowUp,
                  text: "Send",
                  onPressed: (){},
                ),
                HomeDetailsCircularButton(
                  icon: SvgIcons.arrowDown,
                  text: "Receive",
                  onPressed: (){},
                ),
              ],
            ),
            40.verticalSpace,
            Padding(
              padding: REdgeInsets.only(
                bottom: 10,
                left: 16,
                right: 16,
              ),
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: AppColors.c163300O08,
                  borderRadius: BorderRadius.circular(100.r),
                ),
                child: Padding(
                  padding: REdgeInsets.all(4),
                  child: TabBar(
                    labelColor: AppColors.black,
                    unselectedLabelColor: AppColors.grey,
                    dividerHeight: 0,
                    splashBorderRadius: BorderRadius.circular(100.r),
                    labelPadding: EdgeInsets.zero,
                    indicator: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(100.r),
                    ),
                    tabs: [
                      "Transactions",
                      "Options",
                    ].map((e) => SizedBox(
                      width: double.infinity,
                      height: 36,
                      child: Center(child: Text(e)),
                    )).toList(),
                  ),
                ),
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  for(int i=0; i<2; i++)
                  ListView.separated(
                    itemCount: read.transactions.length,
                    separatorBuilder: (context, index) => 8.verticalSpace,
                    itemBuilder: (context, index) => TransactionButtons(
                      onPressed: () {},
                      transactionModel: read.transactions[index],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
