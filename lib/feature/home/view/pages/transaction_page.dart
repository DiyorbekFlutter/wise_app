import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wise_app/core/style/app_colors.dart';
import 'package:wise_app/core/style/svg_icons.dart';
import 'package:wise_app/feature/home/view/widgets/transaction_buttons.dart';
import 'package:wise_app/feature/home/view_model/transaction_vm.dart';

class TransactionPage extends ConsumerWidget {
  const TransactionPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final TransactionVM read = ref.read(transactionVM);

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
                  InkWell(
                    onTap: () => Navigator.pop(context),
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    child: CircleAvatar(
                      radius: 24.r,
                      backgroundColor: AppColors.c163300O08,
                      child: SvgIcons.arrowLeft,
                    ),
                  ),
                  const Spacer(),
                  SvgIcons.investments,
                  12.horizontalSpace
                ],
              ),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          16.verticalSpace,
          Padding(
            padding: REdgeInsets.symmetric(horizontal: 16),
            child: TextField(
              style: TextStyle(
                fontFamily: "Inter",
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                letterSpacing: 0.5,
              ),
              decoration: InputDecoration(
                filled: true,
                fillColor: AppColors.c0E0F0CO12,
                contentPadding: EdgeInsets.symmetric(horizontal: 16.w),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(24.r)
                ),
                prefixIcon: Transform.scale(
                  scale: 0.5,
                  child: SvgIcons.search,
                ),
                hintText: "Search by country",
                hintStyle: TextStyle(
                  fontFamily: "Inter",
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.5,
                  color: AppColors.c454745
                )
              ),
            ),
          ),
          28.verticalSpace,
          SizedBox(
            height: 32.h,
            child: ListView.separated(
              itemCount: read.categories.length,
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) => 16.horizontalSpace,
              padding: EdgeInsets.symmetric(horizontal: 16.h),
              itemBuilder: (context, index) => DecoratedBox(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100.r),
                  border: Border.all(
                    width: 1,
                    color: AppColors.c163300
                  )
                ),
                child: Padding(
                  padding: REdgeInsets.symmetric(horizontal: 16),
                  child: Center(
                    child: Text(
                      read.categories[index],
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontFamily: "Inter",
                        color: AppColors.c163300,
                        fontWeight: FontWeight.w600
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          16.verticalSpace,
          const Divider(),
          Expanded(
            child: ListView(
              padding: REdgeInsets.only(top: 18),
              children: [
                Padding(
                  padding: REdgeInsets.symmetric(horizontal: 16),
                  child: SizedBox(
                    height: 48,
                    child: Padding(
                      padding: REdgeInsets.only(left: 8),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Today",
                          style: TextStyle(
                            fontFamily: "Inter",
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                            color: AppColors.c6A6C6A
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: REdgeInsets.symmetric(horizontal: 16),
                  child: const Divider(height: 0),
                ),
                ...List.generate(read.transactions.length, (index) => TransactionButtons(
                  onPressed: () {},
                  transactionModel: read.transactions[index],
                ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
