import 'package:choose/routes/app_routes.dart';
import 'package:flutter/material.dart';

class ArithemeticView extends StatefulWidget {
  const ArithemeticView({super.key});

  @override
  State<ArithemeticView> createState() => _ArithemeticViewState();
}

class _ArithemeticViewState extends State<ArithemeticView> {
  final globalFormKey = GlobalKey<FormState>();
  TextEditingController one = TextEditingController();
  TextEditingController two = TextEditingController();

  int? sum;

  void add() {
    int numOne = int.tryParse(one.text) ?? 0;
    int numTwo = int.tryParse(two.text) ?? 0;

    setState(() {
      sum = numTwo + numOne;
    });

    Navigator.pushNamed(context, AppRoutes.outputRoute, arguments: sum);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
              leading: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(Icons.arrow_back),
              ),
              title: Text("Arithmetic")),
          body: Form(
              key: globalFormKey,
              child: Column(
                children: [
                  TextFormField(
                    keyboardType: TextInputType.number,
                    controller: one,
                    decoration:
                        InputDecoration(labelText: "enter first number"),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "number Required!!!!!";
                      } else {
                        return null;
                      }
                    },
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    controller: two,
                    decoration:
                        InputDecoration(labelText: "enter second number"),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "number Required!!!!!";
                      } else {
                        return null;
                      }
                    },
                  ),
                  ElevatedButton(
                      onPressed: () {
                        add();
                      },
                      child: Text("Adddd"))
                ],
              ))),
    );
  }
}
