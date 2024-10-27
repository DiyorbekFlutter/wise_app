import 'package:flutter/material.dart';
import 'package:wise_app/core/style/svg_icons.dart';

final List<CountryModel> countries = [
  const CountryModel(
    flag: SvgIcons.singapore,
    price: 0.00,
    name: "British Pound"
  ),
  const CountryModel(
    flag: SvgIcons.unitedStates,
    price: 0.14,
    name: "United States"
  ),
  const CountryModel(
    flag: SvgIcons.india,
    price: 1.00,
    name: "India"
  ),
  const CountryModel(
    flag: SvgIcons.andorra,
    price: 4.28,
    name: "Andorra"
  ),
  const CountryModel(
    flag: SvgIcons.southKorea,
    price: 0.06,
    name: "South Korea"
  )
];

class CountryModel {
  final Widget flag;
  final double price;
  final String name;

  const CountryModel({
    required this.flag,
    required this.price,
    required this.name
  });
}
