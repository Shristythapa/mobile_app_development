import 'package:flutter/material.dart';

class RowsColumns extends StatelessWidget {
  const RowsColumns({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text("Rows and columns")),
        body: Column(
          children: [
            Expanded(
              flex: 1,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: Container(
                      child: Text("Container 1"),
                      color: Colors.blue,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Text("Container 2"),
                      color: Color.fromARGB(255, 202, 85, 77),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Text("Container 3"),
                      color: Colors.blue,
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              flex: 7,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: Container(
                      child: Text("Container 1"),
                      color: Color.fromARGB(255, 119, 80, 198),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Text("Container 2"),
                      color: Colors.blue,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Text("Container 3"),
                      color: Color.fromARGB(255, 119, 80, 198), 
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
