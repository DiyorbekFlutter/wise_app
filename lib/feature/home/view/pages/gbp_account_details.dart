import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wise_app/core/style/app_colors.dart';
import 'package:wise_app/core/style/app_images.dart';
import 'package:wise_app/core/style/svg_icons.dart';
import 'package:wise_app/core/widgets/custom_button.dart';
import 'package:wise_app/feature/home/view/widgets/gbp_account_details_button.dart';
import 'package:wise_app/feature/home/view/widgets/gbp_account_details_list_tile.dart';

class GBPAccountDetails extends StatelessWidget {
  const GBPAccountDetails({super.key});

  @override
  Widget build(BuildContext context) {
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
                      child: SvgIcons.close,
                    ),
                  ),
                  10.horizontalSpace,
                  const Expanded(
                    child: Center(
                      child: Text(
                        "Your GBP account details",
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16
                        ),
                      ),
                    ),
                  ),
                  10.horizontalSpace,
                  SvgIcons.web.style(dimension: 24)
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
                      "Local",
                      "Global · Swift",
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
                  ListView(
                    padding: REdgeInsets.all(16),
                    children: [
                      DecoratedBox(
                        decoration: BoxDecoration(
                          color: AppColors.c163300O08,
                          borderRadius: BorderRadius.circular(26.r)
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: REdgeInsets.all(20),
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    radius: 20.r,
                                    child: SvgIcons.unitedStates,
                                  ),
                                  10.horizontalSpace,
                                  const Expanded(
                                    child: Text(
                                      "Receive from a bank in the UK",
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold
                                      ),
                                    ),
                                  ),
                                  10.horizontalSpace,
                                  const CustomButton(
                                    height: 40,
                                    text: "Share",
                                  )
                                ],
                              ),
                            ),
                            for(var element in {
                              "Account holder": "Michelle Agyaponma",
                              "Sort code": "23-08-01",
                              "Account number": "43800276",
                              "IBAN": "GBO8 TRWI 2308 0143 8002 76",
                              "Bank name and address": "Wise Payments Limited 56 Shoredich High Street"
                                  "\nLondon"
                                  "\nE1 6JJ"
                                  "\nUnited Kingdom",
                            }.entries) GBPAccountDetailsButton(
                              title: element.key,
                              content: element.value,
                            )
                          ],
                        ),
                      ),
                      20.verticalSpace,
                      DecoratedBox(
                        decoration: BoxDecoration(
                          color: AppColors.c163300O08,
                          borderRadius: BorderRadius.circular(26.r)
                        ),
                        child: Column(
                          children: [
                            GBPAccountDetailsListTile(
                              icon: SvgIcons.clock.style(dimension: 26),
                              content: "Payments take up to 1 working day to arrive",
                            ),
                            GBPAccountDetailsListTile(
                              icon: SvgIcons.lock.style(dimension: 26),
                              content: "Learn how Wise keeps your money safe",
                            ),
                          ],
                        ),
                      ),
                      20.verticalSpace,
                      SizedBox(
                        height: 130.h,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(26.r),
                          child: ColoredBox(
                            color: AppColors.c163300O08,
                            child: Stack(
                              alignment: Alignment.topRight,
                              children: [
                                Align(
                                  alignment: const Alignment(-1, 1),
                                  child: Transform.translate(
                                    offset: Offset(-56.w, 30.h),
                                    child: Image.asset(AppImages.globe),
                                  ),
                                ),
                                Padding(
                                  padding: REdgeInsets.only(
                                    top: 10,
                                    bottom: 10,
                                    left: 120,
                                    right: 10
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      10.verticalSpace,
                                      const Text(
                                        "How to use your GBP account details",
                                        style: TextStyle(
                                          color: AppColors.grey
                                        ),
                                      ),
                                      10.verticalSpace,
                                      const Text(
                                        "See how they work",
                                        style: TextStyle(
                                          color: AppColors.c2F5711,
                                          fontWeight: FontWeight.bold,
                                          decorationColor: AppColors.c121511,
                                          decoration: TextDecoration.underline
                                        ),
                                      ),
                                      10.verticalSpace,
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
