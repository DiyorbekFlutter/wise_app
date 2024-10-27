import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wise_app/core/style/app_colors.dart';
import 'package:wise_app/data/entity/transaction_model.dart';

class TransactionButtons extends StatelessWidget {
  final void Function() onPressed;
  final TransactionModel transactionModel;

  const TransactionButtons({
    super.key,
    required this.onPressed,
    required this.transactionModel
  });

  @override
  Widget build(BuildContext context) => InkWell(
    onTap: onPressed,
    child: Padding(
      padding: REdgeInsets.symmetric(horizontal: 16),
      child: SizedBox(
        height: 82.h,
        child: Center(
          child: SizedBox(
            height: 52.h,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 24.r,
                  backgroundColor: AppColors.c163300O08,
                  child: transactionModel.icon,
                ),
                16.horizontalSpace,
                Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        transactionModel.title,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontFamily: "Inter",
                          fontWeight: FontWeight.w600,
                          color: AppColors.c0E0F0C
                        ),
                      ),
                      Text(
                        transactionModel.subTitle,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontFamily: "Inter",
                          fontWeight: FontWeight.w400,
                          color: AppColors.c0E0F0C
                        ),
                      ),
                    ],
                  ),
                ),
                10.horizontalSpace,
                Expanded(
                  child: Text(
                    transactionModel.price,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontFamily: "Inter",
                      fontWeight: FontWeight.w600,
                      color: AppColors.c0E0F0C
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
