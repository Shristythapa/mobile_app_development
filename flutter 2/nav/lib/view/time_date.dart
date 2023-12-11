import 'package:flutter/material.dart';

class TimeDate extends StatefulWidget {
  const TimeDate({super.key});

  @override
  State<TimeDate> createState() => _TimeDateState();
}

class _TimeDateState extends State<TimeDate> {
  TextEditingController date = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const TextField(),
              ElevatedButton(onPressed: () {}, child: const Text("Change Time"))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Text("Date : 2022/03/04"),
              ElevatedButton(onPressed: () {}, child: const Text("Change Date"))
            ],
          ),
        ],
      ),
    );
  }
}
