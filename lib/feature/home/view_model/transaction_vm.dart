import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wise_app/core/style/svg_icons.dart';
import 'package:wise_app/data/entity/transaction_model.dart';

final ChangeNotifierProvider<TransactionVM> transactionVM = ChangeNotifierProvider((ref) => TransactionVM());

class TransactionVM with ChangeNotifier {
  final List<String> categories = [
    "Includes hidden",
    "Type",
    "Balance",
    "Direct"
  ];

  final List<TransactionModel> transactions = [
    const TransactionModel(
      icon: SvgIcons.arrowUp,
      title: "Sarah Davies",
      subTitle: "Paid · Today",
      price: "50.00 PLN"
    ),
    const TransactionModel(
      icon: SvgIcons.plus,
      title: "Sarah Davies",
      subTitle: "Paid · Today",
      price: "50.00 PLN"
    ),
    const TransactionModel(
      icon: SvgIcons.receipt,
      title: "Sarah Davies",
      subTitle: "Paid · Today",
      price: "50.00 PLN"
    ),
    const TransactionModel(
      icon: SvgIcons.arrowUp,
      title: "Sarah Davies",
      subTitle: "Paid · Today",
      price: "50.00 PLN"
    ),
    const TransactionModel(
      icon: SvgIcons.plus,
      title: "Sarah Davies",
      subTitle: "Paid · Today",
      price: "50.00 PLN"
    ),
    const TransactionModel(
      icon: SvgIcons.plus,
      title: "Sarah Davies",
      subTitle: "Paid · Today",
      price: "50.00 PLN"
    ),
    const TransactionModel(
      icon: SvgIcons.arrowUp,
      title: "Sarah Davies",
      subTitle: "Paid · Today",
      price: "50.00 PLN"
    ),
    const TransactionModel(
      icon: SvgIcons.plus,
      title: "Sarah Davies",
      subTitle: "Paid · Today",
      price: "50.00 PLN"
    ),
    const TransactionModel(
      icon: SvgIcons.receipt,
      title: "Sarah Davies",
      subTitle: "Paid · Today",
      price: "50.00 PLN"
    ),
    const TransactionModel(
      icon: SvgIcons.arrowUp,
      title: "Sarah Davies",
      subTitle: "Paid · Today",
      price: "50.00 PLN"
    ),
    const TransactionModel(
      icon: SvgIcons.plus,
      title: "Sarah Davies",
      subTitle: "Paid · Today",
      price: "50.00 PLN"
    ),
    const TransactionModel(
      icon: SvgIcons.plus,
      title: "Sarah Davies",
      subTitle: "Paid · Today",
      price: "50.00 PLN"
    ),
  ];
}
