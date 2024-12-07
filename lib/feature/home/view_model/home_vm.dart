import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wise_app/core/style/svg_icons.dart';

final ChangeNotifierProvider<HomeVM> homeVM = ChangeNotifierProvider((ref) => HomeVM());

class HomeVM extends ChangeNotifier {
  int currentCategoryIndex = 0;

  final List<List> categories = [
    [SvgIcons.arrowUp, "Send"],
    [SvgIcons.plus, "Add money"],
    [SvgIcons.arrowDown, "Request"],
  ];

  void switchCategoryIndex(int index) {
    currentCategoryIndex = index;
    notifyListeners();
  }
}
