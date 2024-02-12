import 'package:flutter/material.dart';
import 'package:foodrecipe/widgets/IngredientsWeight.dart';

class IngredientSection extends StatelessWidget {
  const IngredientSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Ingredients",
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.w600),
            ),
            Text(
              "5 items",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color: Colors.grey,
                fontSize: 14,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        IngredientsWeight(image:"assets/images/coffees.png", name: "Milk", weight: "200"),
        const SizedBox(
          height: 15,
        ),
        IngredientsWeight(image:"assets/images/burgers.png", name: "Bread", weight: "200"),
        const SizedBox(
          height: 15,
        ),
        IngredientsWeight(image:"assets/images/coffees.png", name: "Eggs", weight: "200"),

      ],
    );
  }
}
