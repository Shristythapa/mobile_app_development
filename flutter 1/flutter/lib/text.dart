import 'package:flutter/material.dart';

class Feildd extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            RichText(
                text: const TextSpan(
                    text: "Hello ",
                    style: TextStyle(color: Colors.black, fontSize: 30),
                    children: <TextSpan>[
                  TextSpan(
                      text: 'bold ',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.amber)),
                  TextSpan(
                    text: '\nworld!!',
                  )
                ])),
            const TextField(
              decoration: InputDecoration(
                  labelText: 'Enter email',
                  border: OutlineInputBorder(
                      borderRadius:
                          BorderRadius.all(Radius.circular(100.0))),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green))),
            ),
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: 'Enter password'),
            )
          ],
        ),
      ),
    );
  }
}
