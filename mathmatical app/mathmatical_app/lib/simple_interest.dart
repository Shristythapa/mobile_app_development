import 'package:flutter/material.dart';

class SimpleInterest extends StatefulWidget {
  const SimpleInterest({super.key});

  @override
  State<SimpleInterest> createState() => _SimpleInterestState();
}

class _SimpleInterestState extends State<SimpleInterest> {
  TextEditingController pController = TextEditingController();
  TextEditingController rController = TextEditingController();
  TextEditingController tController = TextEditingController();
  final globalKey = GlobalKey<FormState>();

  String result = '';

  void getSI() {
    double p = double.tryParse(pController.text) ?? 0;
    double r = double.tryParse(rController.text) ?? 0;
    double t = double.tryParse(tController.text) ?? 0;

    setState(() {
      result = ((p * t * r) / 100).toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: globalKey,
      child: Padding(
        padding: EdgeInsets.all(30),
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextFormField(
              controller: pController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter Principle',
                  labelStyle: TextStyle(color: Colors.grey, fontSize: 15)),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Principle Required!!!!!";
                } else {
                  return null;
                }
              },
            ),
            TextFormField(
              controller: tController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter Time',
                  labelStyle: TextStyle(color: Colors.grey, fontSize: 15)),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Time Required!!!!!";
                } else {
                  return null;
                }
              },
            ),
            TextFormField(
              controller: rController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter Rate',
                  labelStyle: TextStyle(color: Colors.grey, fontSize: 15)),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Rate Required!!!!!";
                } else {
                  return null;
                }
              },
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  if (globalKey.currentState!.validate()) {
                    getSI();
                  }
                },
                child: const Text("Simple Interest")),
            const SizedBox(
              height: 10,
            ),
            Text("Simple interest = $result")
          ],
        ),
      ),
    );
  }
}
