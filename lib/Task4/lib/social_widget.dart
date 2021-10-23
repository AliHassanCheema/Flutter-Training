import 'package:flutter/material.dart';

class Social extends StatelessWidget {
  final IconData myIcon;
  final String title;

  const Social({Key? key, required this.myIcon, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          myIcon,
          color: Colors.grey,
        ),
        const SizedBox(width: 20),
        Text(
          title,
          style: const TextStyle(
              color: Colors.amber, fontSize: 20, letterSpacing: 0),
        )
      ],
    );
  }
}
