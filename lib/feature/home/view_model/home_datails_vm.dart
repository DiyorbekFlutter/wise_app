import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wise_app/core/style/svg_icons.dart';
import 'package:wise_app/data/entity/transaction_model.dart';

final ChangeNotifierProvider<HomeDetailsVM> homeDetailsVM = ChangeNotifierProvider((ref) => HomeDetailsVM());

class HomeDetailsVM extends ChangeNotifier {
  final List<TransactionModel> transactions = [
    const TransactionModel(
      icon: SvgIcons.arrowDown,
      title: "Sarah Davies",
      subTitle: "Thu, 17 Oct",
      price: "+ 10 GBP"
    ),
    const TransactionModel(
      icon: SvgIcons.arrowUp,
      title: "A Yusuf",
      subTitle: "Sent · Wed, 16 Oct",
      price: "- 25 GBP"
    ),
    const TransactionModel(
      icon: SvgIcons.arrowUp,
      title: "Sarah Davies",
      subTitle: "Wed, 16 Oct · Today",
      price: "+ 50.00 GBP"
    ),
    const TransactionModel(
      icon: SvgIcons.arrowUp,
      title: "Sarah Davies",
      subTitle: "Paid · Today",
      price: " + 15 GBP"
    ),
    const TransactionModel(
      icon: SvgIcons.arrowUp,
      title: "Sarah Davies",
      subTitle: "Thu, 17 Oct",
      price: "+ 10 GBP"
    ),
    const TransactionModel(
      icon: SvgIcons.arrowDown,
      title: "A Yusuf",
      subTitle: "Paid · Today",
      price: "- 25 GBP"
    ),
    const TransactionModel(
      icon: SvgIcons.arrowUp,
      title: "Sarah Davies",
      subTitle: "Paid · Today",
      price: "+ 50.00 GBP"
    ),
    const TransactionModel(
      icon: SvgIcons.arrowUp,
      title: "Sarah Davies",
      subTitle: "Paid · Today",
      price: " + 15 GBP"
    ),
  ];
}
