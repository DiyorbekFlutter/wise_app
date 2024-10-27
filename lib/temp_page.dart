import 'package:flutter/material.dart';

class TempPage extends StatelessWidget {
  final String title;

  const TempPage({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(title)
      ),
    );
  }
}