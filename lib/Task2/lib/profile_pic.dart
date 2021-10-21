import 'package:flutter/material.dart';

class ProfilePic extends StatelessWidget {
  final String image;
  const ProfilePic({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 40, 0, 70),
        child: ClipRRect(
          child: Image.asset(
            image,
            height: 160,
            width: 160,
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(100),
        ),
      ),
    );
  }
}
