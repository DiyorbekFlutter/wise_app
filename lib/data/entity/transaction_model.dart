import 'package:flutter/material.dart';

class TransactionModel {
  final Widget icon;
  final String title;
  final String subTitle;
  final String price;

  const TransactionModel({
    required this.icon,
    required this.title,
    required this.subTitle,
    required this.price
  });
}
