import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wise_app/feature/home/view/pages/home_page.dart';
import 'package:wise_app/temp_page.dart';

final ChangeNotifierProvider<MainVM> mainVM = ChangeNotifierProvider((ref) => MainVM());

class MainVM extends ChangeNotifier {
  int currantIndex = 0;

  final List<Widget> pages = [
    const HomePage(),
    const TempPage(title: "Card"),
    const TempPage(title: "Send"),
    const TempPage(title: "Recipients"),
    const TempPage(title: "Manage"),
  ];

  void onChangeIndex(int index) {
    currantIndex = index;
    notifyListeners();
  }
}
