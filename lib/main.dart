import 'package:flutter/material.dart';
import 'package:foodrecipe/Ingredients.dart';
import 'package:foodrecipe/widgets/Appbar.dart';
import 'package:foodrecipe/widgets/Rating.dart';
import 'package:foodrecipe/widgets/Vendor.dart';
import 'package:foodrecipe/widgets/Clips.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Food Recipe',
      home: MyHomePage(title: ''),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "How to make french toast",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 17,
              ),
              ClipsSection(bgImage: "assets/images/image.png"),
              const SizedBox(
                height: 14,
              ),
              Rating(rating: 4.5),
              const SizedBox(
                height: 12,
              ),
              Vendor(
                  image: "assets/images/unsplashs.png",
                  name: "Roberta Anny",
                  location: "Bali, Indonesia"),
              const SizedBox(
                height: 20,
              ),
              const IngredientSection(),
            ],
          ),
        ),
      ),
    );
  }
}
