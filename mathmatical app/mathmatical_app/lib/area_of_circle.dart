import 'package:flutter/material.dart';

class AreaOfCircle extends StatefulWidget {
  const AreaOfCircle({super.key});

  @override
  State<AreaOfCircle> createState() => _AreaOfCircleState();
}

class _AreaOfCircleState extends State<AreaOfCircle> {
  final globalKey = GlobalKey<FormState>();
  TextEditingController radiusController = TextEditingController();

  String result = '';

  void getArea() {
    double? r = double.tryParse(radiusController.text);
    double area = 22 / 7 * r! * r;
    setState(() {
      result = area.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        key: globalKey,
        child: Padding(
          padding: EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextFormField(
                controller: radiusController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter Radius',
                    labelStyle: TextStyle(color: Colors.grey, fontSize: 15)),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Radius Required!!!!!";
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
                        getArea();
                      }
                    },
                    child: const Text("Get Area")),
              ),
              const SizedBox(
                height: 20,
              ),
              Text("Area is $result")
            ],
          ),
        ));
  }
}
