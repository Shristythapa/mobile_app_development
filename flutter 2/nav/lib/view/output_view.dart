import 'package:flutter/material.dart';

class OutputView extends StatelessWidget {
  const OutputView({super.key});


  @override
  Widget build(BuildContext context) {
    int result = ModalRoute.of(context)!.settings.arguments as int;

    return  SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(Icons.arrow_back),
            ),
          title:Text("Output")
        ),
        body: Text(
          "Result $result"
        ),
      ),
    );
  }
}
