import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wise_app/core/style/app_colors.dart';

class HomeDetailsCircularButton extends StatelessWidget {
  final Widget icon;
  final String text;
  final void Function() onPressed;

  const HomeDetailsCircularButton({
    super.key,
    required this.icon,
    required this.text,
    required this.onPressed
  });

  @override
  Widget build(BuildContext context) => InkWell(
    onTap: onPressed,
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    child: Column(
      children: [
        CircleAvatar(
          radius: 32.r,
          backgroundColor: AppColors.c9FE870,
          child: icon,
        ),
        10.verticalSpace,
        Text(text)
      ],
    ),
  );
}
