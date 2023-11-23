import 'dart:math';

import 'package:flutter/material.dart';

class RandomView extends StatefulWidget {
  const RandomView({super.key});

  @override
  State<RandomView> createState() => _RandomViewState();
}

class _RandomViewState extends State<RandomView> {
  final random = Random();
  int wins = 0;
  int chances = 0;
  int? randomOne;
  int? randomTwo;
  String gamedone = "";

  void updateRandom() {
    setState(() {
      randomOne = random.nextInt(101);
      randomTwo = random.nextInt(101);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Random game"),
        ),
        body: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                updateRandom();
                print(randomOne);
                print("one");
                if ((randomOne! > randomTwo!) && chances <= 10) {
                  gamedone = " ";
                  setState(() {
                    wins++;
                    chances++;
                  });
                } else if (chances > 10) {
                  setState(() {
                    wins = 0;
                    chances = 0;
                    gamedone = " Game over";
                  });
                  updateRandom();
                } else {
                  setState(() {
                    gamedone = " ";
                    chances++;
                  });
                }
              },
              child: Text("Choose One"),
            ),
            ElevatedButton(
              onPressed: () {
                updateRandom();
                print(randomTwo);
                print("two");
                if ((randomOne! < randomTwo!) && chances <= 10) {
                  
                  setState(() {
                    gamedone = " ";
                    wins++;
                    chances++;
                  });
                } else if (chances > 10) {
                  setState(() {
                    gamedone = " Game over";
                    wins = 0;
                    chances = 0;
                  });
                  updateRandom();
                } else {
                  setState(() {
                    gamedone = " ";
                    chances++;
                  });
                }
              },
              child: Text("Choose Two"),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  gamedone = " Game over";
                  wins = 0;
                  chances = 0;
                });
                updateRandom();
              },
              child: Text("Reset"),
            ),
            Text("My wins: $wins"),
            Text(gamedone)
          ],
        ));
  }
}
