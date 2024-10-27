import 'package:flutter/material.dart';
import 'package:wise_app/core/style/app_colors.dart';
import 'package:wise_app/core/style/svg_icons.dart';

import '../../../core/widgets/app_shadow.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int currantIndex;
  final void Function(int index) onChanged;
  final List<CustomBottomNavigationBarItem> items;

  CustomBottomNavigationBar({
    super.key,
    required this.currantIndex,
    required this.onChanged,
    required List<CustomBottomNavigationBarItem> items
  }) : items = items.map((e) {
    final int index = items.indexOf(e);
    e._index = index;
    e._isSelected = index == currantIndex;
    e._onChanged = onChanged;
    return e;
  }).toList();

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      height: 71,
      padding: EdgeInsets.zero,
      color: Colors.white,
      child: DecoratedBox(
        decoration: BoxDecoration(boxShadow: appShadow),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: items,
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class CustomBottomNavigationBarItem extends StatelessWidget {
  final SvgIcon icon;
  final String label;
  late bool _isSelected;
  late int _index;
  late void Function(int index) _onChanged;

  CustomBottomNavigationBarItem({
    super.key,
    required this.icon,
    required this.label,
  });

  @override
  Widget build(BuildContext context) => Expanded(
    child: IconButton(
      onPressed: () => _onChanged(_index),
      highlightColor: Colors.transparent,
      icon: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _index != 2 ? icon.style(
            width: _index == 0 ? 25 : 22.0,
            height: _index == 0 ? 25 : 22.0,
            color: _isSelected ? null : AppColors.grey
          ) : CircleAvatar(
            radius: 18,
            backgroundColor: AppColors.c9FE870,
            child: icon.style(
              width: _index == 0 ? 25 : 22.0,
              height: _index == 0 ? 25 : 22.0,
              color: _isSelected ? null : AppColors.grey
            ),
          ),
          const SizedBox(height: 3.0),
          Text(
            label,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontSize: 10)
          )
        ],
      )
    ),
  );
}
