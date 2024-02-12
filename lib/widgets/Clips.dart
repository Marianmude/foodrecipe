// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class ClipsSection extends StatelessWidget {
  String bgImage;
  ClipsSection({super.key, required this.bgImage});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(
              bgImage,
            ),
          ),
        ),
        Image.asset("assets/images/Play.png", fit: BoxFit.cover),
      ],
    );
  }
}
