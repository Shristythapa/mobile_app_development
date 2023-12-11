import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  List items = [
    'C',
    '*',
    '/',
    '->',
    1,
    2,
    3,
    '+',
    4,
    5,
    6,
    '-',
    7,
    8,
    9,
    '*',
    ' %',
    0,
    '.',
    '=',
  ];

  int? first, second;

  String operator = "";
  int? pressing;

  void evaluteExpression() {
    if (first == null || second == null || operator.isEmpty) {
      print("first $first");
      print("second $second");
      print("ope $operator");
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Please enter a full expression ;)")));
    } else {
      if (operator == "*") {
        setState(() {
          text = (first! * second!).toString();
        });
      } else if (operator == "-") {
        setState(() {
          text = (first! - second!).toString();
        });
      } else if (operator == "+") {
        setState(() {
          text = (first! + second!).toString();
        });
      } else if (operator == "/") {
        setState(() {
          text = (first! / second!).toString();
        });
      } else if (operator == "%") {
        setState(() {
          text = (first! % second!).toString();
        });
      }
    }
    first = null;
    second = null;
    operator = '';
  }

  String text = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator app",
            style: Theme.of(context).textTheme.headlineLarge),
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const SizedBox(
              height: 30,
            ),
            Container(
                height: 100,
                width: double.infinity,
                alignment: Alignment.bottomRight,
                child: Text(
                  text,
                  style: const TextStyle(fontSize: 30),
                )),
            const SizedBox(
              height: 60,
              width: 40,
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 4,
                crossAxisSpacing: 12,
                mainAxisSpacing: 15,
                children: [
                  for (int i = 0; i < items.length; i++) ...{
                    SizedBox(
                      height: 50,
                      width: 40,
                      child: ElevatedButton(
                        onPressed: () {
                          if (items[i] is int) {
                            if (pressing == null) {
                              setState(() {
                                pressing = items[i];
                                text = pressing.toString();
                              });
                            } else {
                              setState(() {
                                pressing = pressing! * 10 + items[i] as int;
                                text = pressing.toString();
                              });
                            }
                          } else {
                            if (first == null) {
                              setState(() {
                                first = pressing;
                                text = pressing.toString();
                                pressing = null;
                                print("first $first");
                              });
                            } else if (second == null) {
                              setState(() {
                                second = pressing;
                                text = text + pressing.toString();
                                pressing = null;
                                print("first $first");
                                print("second $second");
                              });
                            }
                            print("operator ${items[i]}");
                            if (items[i] == "=") {
                              evaluteExpression();
                            } else if (items[i] == 'C') {
                              setState(() {
                                first = null;
                                second = null;
                                operator = '';
                                text = '';
                                print(first);
                                print(second);
                                print(operator);
                              });
                            } else {
                              setState(() {
                                operator = items[i];
                                text = text + operator;
                                pressing = null;
                                print("first $first");
                                print("second $second");
                              });
                            }
                          }
                        },
                        child: Center(
                            child: Text(
                          " ${items[i]}",
                          style: const TextStyle(
                              fontSize: 30, color: Colors.white),
                        )),
                      ),
                    )
                  }
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
