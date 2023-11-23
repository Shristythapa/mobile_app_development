import 'package:flutter/material.dart';

class ReverseString extends StatefulWidget {
  const ReverseString({super.key});

  @override
  State<ReverseString> createState() => _ReverseStringState();
}

class _ReverseStringState extends State<ReverseString> {
  final globalKey = GlobalKey<FormState>();
  TextEditingController inputString = TextEditingController();
  String result = '';

  void reverse() {
    String text = inputString.text;
    String reverse = '';
    for (int i = text.length - 1; i >= 0; i--) {
      reverse = reverse + text[i];
     
    }
    setState(() {
      result = reverse;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: globalKey,
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextFormField(
              controller: inputString,
              keyboardType: TextInputType.text,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter String',
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
              height: 20,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    if (globalKey.currentState!.validate()) {
                      reverse();
                    }
                  },
                  child: const Text("Reverse")),
            ),
            const SizedBox(
              height: 20,
            ),
            Text("Revered is $result")
          ],
        ),
      ),
    );
  }
}
