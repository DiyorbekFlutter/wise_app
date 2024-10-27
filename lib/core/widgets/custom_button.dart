import 'package:flutter/material.dart';

import '../style/app_colors.dart';

class CustomButton extends StatelessWidget {
  final String? text;
  final VoidCallback? onPressed;
  final Widget? child;
  final double? width;
  final double? height;
  final Color? textColor;
  final Color? backgroundColor;
  final EdgeInsetsGeometry? padding;
  final BorderRadiusGeometry? borderRadius;

  const CustomButton({
    super.key,
    this.text,
    this.onPressed,
    this.child,
    this.width,
    this.height,
    this.textColor,
    this.backgroundColor,
    this.padding,
    this.borderRadius
  });

  @override
  Widget build(BuildContext context) => SizedBox(
    width: width,
    height: height ?? 48,
    child: ElevatedButton(
      onPressed: onPressed ?? (){},
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: backgroundColor ?? AppColors.c9FE870,
        padding: padding ?? const EdgeInsets.symmetric(horizontal: 10),
        shape: RoundedRectangleBorder(
          borderRadius: borderRadius ?? BorderRadius.circular(100)
        ),
      ),
      child: child ?? Text(text??"", style: TextStyle(color: textColor ?? AppColors.black)),
    ),
  );
}
