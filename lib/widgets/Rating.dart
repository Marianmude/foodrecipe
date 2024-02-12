import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Rating extends StatelessWidget {
  num rating;

   Rating({super.key, required this.rating});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(
          Icons.star,
          color: Colors.orange.shade400,
          size: 19,
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          "$rating",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          width: 8,
        ),
        Text(
          "(300 Reviews)",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            color: Colors.grey,
            fontSize: 14,
          ),
        ),
        SizedBox(
          width: 8,
        ),
      ],
    );
  }
}
