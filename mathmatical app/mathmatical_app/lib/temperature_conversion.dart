import 'package:flutter/material.dart';

class TemperatureConversion extends StatefulWidget {
  const TemperatureConversion({super.key});

  @override
  State<TemperatureConversion> createState() => _TemperatureConversionState();
}

class _TemperatureConversionState extends State<TemperatureConversion> {
  TextEditingController input = TextEditingController();
  String result = '';

  final globalKey = GlobalKey<FormState>();

  void toF() {
    double i = double.tryParse(input.text) ?? 0;
    setState(() {
      result = "Fahrenheit ${(i * 9 / 5) + 32} °F";
    });
  }

  void toC() {
    double i = double.tryParse(input.text) ?? 0;
    setState(() {
      result = "Celsius ${(i - 32) * 5 / 9} °C";
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
              controller: input,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter Number',
                  labelStyle: TextStyle(color: Colors.grey, fontSize: 15)),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Input Required!!!!!";
                } else {
                  return null;
                }
              },
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    if (globalKey.currentState!.validate()) {
                      toF();
                    }
                  },
                  child: const Text("To Fahrenheit")),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    if (globalKey.currentState!.validate()) {
                      toC();
                    }
                  },
                  child: const Text("To Celsius")),
            ),
            SizedBox(
              height: 10,
            ),
            Text(result)
          ],
        ),
      ),
    );
  }
}
