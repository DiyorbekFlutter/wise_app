import 'package:flutter/material.dart';
import 'package:wise_app/core/style/app_colors.dart';

class CustomLabel extends StatelessWidget {
  final String label;
  final bool isRequired;
  final Widget? trailing;
  final bool? showMoreButton;
  final void Function()? showMoreButtonPressed;
  final EdgeInsetsGeometry padding;

  const CustomLabel({
    super.key,
    required this.label,
    this.isRequired = true,
    this.padding = EdgeInsets.zero
  }) : trailing = null, showMoreButton = false, showMoreButtonPressed = null;

  const CustomLabel.full({
    super.key,
    required this.label,
    this.trailing,
    this.showMoreButton,
    this.showMoreButtonPressed,
    this.padding = EdgeInsets.zero
  }) : isRequired = false;

  @override
  Widget build(BuildContext context) => trailing != null || showMoreButton == true ? Padding(
    padding: padding,
    child: Row(
      children: [
        Expanded(
          child: Text(
            label,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold
            ),
          ),
        ),
        if(trailing != null) trailing!,
        if(showMoreButton == true) InkWell(
          onTap: showMoreButtonPressed,
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          child: Row(
            children: [
              const Text(
                "Ko'proq",
                style: TextStyle(
                  color: AppColors.blue,
                  fontSize: 12
                ),
              ),
              Transform.rotate(
                angle: 3.14,
                child: Transform.scale(
                  scale: 0.7,
                  child: const Icon(
                    Icons.arrow_back_ios_new_rounded,
                    color: AppColors.blue,
                  ),
                ),
              )
            ],
          ),
        )
      ],
    ),
  ) : Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      IntrinsicWidth(
        child: Row(
          children: [
            Expanded(
              child: Text(
                label,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
            if(isRequired) const Text(
              "*",
              style: TextStyle(
                fontSize: 12,
                color: Colors.red,
                fontWeight: FontWeight.bold
              ),
            ),
          ],
        ),
      ),
    ],
  );
}
