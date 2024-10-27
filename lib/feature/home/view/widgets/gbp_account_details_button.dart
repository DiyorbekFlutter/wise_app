import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wise_app/core/style/app_colors.dart';
import 'package:wise_app/core/style/svg_icons.dart';

class GBPAccountDetailsButton extends StatelessWidget {
  final String title;
  final String content;

  const GBPAccountDetailsButton({
    super.key,
    required this.title,
    required this.content,
  });

  @override
  Widget build(BuildContext context) => ListTile(
    title: Text(
      title,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        fontSize: 14,
        color: AppColors.black.withOpacity(0.6)
      ),
    ),
    subtitle: Text(
      content,
      style: const TextStyle(
        fontSize: 17,
        color: AppColors.black
      ),
    ),
    trailing: IconButton(
      onPressed: () => Clipboard.setData(ClipboardData(text: content)),
      icon: SvgIcons.documents,
    ),
  );
}
