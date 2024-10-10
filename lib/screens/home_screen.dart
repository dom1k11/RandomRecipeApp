import 'package:flutter/material.dart';
import 'package:random_recipe_app/widgets/custom_floating_button.dart';
import 'dart:math';
class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var randomnumber = 0;
void getRandomNumber () {
  setState(() {
    randomnumber = Random().nextInt(100);
    print(randomnumber);

  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Title"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Text('Hello World'),
              Text("Random number is $randomnumber"),
            ],
          ),
        ],
      ),
      floatingActionButton: CustomFloatingActionButton(
        onPressed: () {
          getRandomNumber();
        },
        color: Colors.cyanAccent, // Задайте нужный цвет
        icon: Icons.add, // Задайте нужный иконку
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
