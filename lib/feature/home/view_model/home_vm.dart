import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final ChangeNotifierProvider<HomeVM> homeVM = ChangeNotifierProvider((ref) => HomeVM());

class HomeVM extends ChangeNotifier {
  int currentCategoryIndex = 0;

  final List<String> categories = ["All", "Interest"];

  void switchCategoryIndex(int index) {
    currentCategoryIndex = index;
    notifyListeners();
  }
}
