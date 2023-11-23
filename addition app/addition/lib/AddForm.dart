// ignore: file_names
import 'package:flutter/material.dart';

class AddForm extends StatefulWidget {
  const AddForm({Key? key}) : super(key: key);

  @override
  State<AddForm> createState() => _AddFormState();
}

class _AddFormState extends State<AddForm> {
  TextEditingController num1Controller = TextEditingController();
  TextEditingController num2Controller = TextEditingController();
  String result1 = '';
  String result2 = '';

  final globalKey = GlobalKey<FormState>();

  void performAddition() {
    double num1 = double.tryParse(num1Controller.text) ?? 0;
    double num2 = double.tryParse(num2Controller.text) ?? 0;
    double sum = num1 + num2;
    setState(() {
      result1 = 'Sum: $sum';
    });
  }
    void performSub() {
    double num1 = double.tryParse(num1Controller.text) ?? 0;
    double num2 = double.tryParse(num2Controller.text) ?? 0;
    double sub = num1 - num2;
    setState(() {
      result2 = 'Sub: $sub';
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.white,
          backgroundColor: Colors.deepPurple,
          title: const Center(child: Text("Add Numbers")),
        ),
        body: Container(
          margin: const EdgeInsets.all(20),
          padding: const EdgeInsets.all(10),
          child: Form(
            key: globalKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextFormField(
                  controller: num1Controller,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Enter Number 1',
                      labelStyle: TextStyle(color: Colors.grey, fontSize: 15)),
                  validator: (value) {
                    if (value == null||value.isEmpty) {
                      return "Enter first number";
                    } else {
                      return null;
                    }
                  },
                ),
                TextFormField(
                    controller: num2Controller,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Enter Number 2',
                        labelStyle:
                            TextStyle(color: Colors.grey, fontSize: 15)),
                    validator: (value) {
                      if (value == null ||value.isEmpty) {
                        return "Enter second number";
                      } else {
                        return null;
                      }
                    }),
                const SizedBox(height: 16),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      if (globalKey.currentState!.validate()) {
                        performAddition();
                      }
                    },
                    child: const Text(
                      'Add',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      if (globalKey.currentState!.validate()) {
                        performSub();
                      }
                    },
                    child: const Text(
                      'Subtract',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  result1,
                  style: const TextStyle(fontSize: 20),
                ),
                const SizedBox(height: 16),
                Text(
                  result2,
                  style: const TextStyle(fontSize: 20),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
