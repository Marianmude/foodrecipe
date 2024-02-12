// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class IngredientsWeight extends StatelessWidget {
  String image;
  String name;
  String weight;

  IngredientsWeight(
      {super.key,
      required this.image,
      required this.name,
      required this.weight});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.transparent, width: 2),
        color: Colors.blueGrey.withAlpha(50),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.transparent, width: 2),
                  color: Colors.white,
                ),
                padding: EdgeInsets.all(9),
                child: Image.asset(image, fit: BoxFit.cover),
              ),
              SizedBox(
                width: 15,
              ),
              Text(
                name,
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
              ),
            ],
          ),
          Text(
            "\t$weight\g",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              color: Colors.grey,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}