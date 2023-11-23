import 'package:flutter/material.dart';

class OutputView extends StatelessWidget {
  const OutputView({super.key});


  @override
  Widget build(BuildContext context) {
    int result = ModalRoute.of(context)!.settings.arguments as int;

    return  SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title:Text("Output")
        ),
        body: Text(
          "Result $result"
        ),
      ),
    );
  }
}
