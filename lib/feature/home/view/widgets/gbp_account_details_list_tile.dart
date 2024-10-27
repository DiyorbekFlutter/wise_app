import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wise_app/core/style/svg_icons.dart';

class GBPAccountDetailsListTile extends StatelessWidget {
  final Widget icon;
  final String content;

  const GBPAccountDetailsListTile({
    super.key,
    required this.icon,
    required this.content
  });

  @override
  Widget build(BuildContext context) => Padding(
    padding: REdgeInsets.all(20),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        icon,
        10.horizontalSpace,
        Expanded(
          child: Text(
            content,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontWeight: FontWeight.bold
            ),
          ),
        ),
        10.horizontalSpace,
        SvgIcons.help.style(dimension: 26)
      ],
    ),
  );
}
