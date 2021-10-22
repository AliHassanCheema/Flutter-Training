import 'package:flutter/material.dart';

class Bio extends StatelessWidget {
  final String text;
  final bool isHeading;
  const Bio({
    Key? key,
    required this.text,
    required this.isHeading,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: isHeading ? Colors.grey : Colors.amber,
          fontSize: isHeading ? 16 : 24,
          letterSpacing: isHeading ? 1 : 0,
          fontWeight: isHeading ? FontWeight.normal : FontWeight.bold),
    );
  }
}
