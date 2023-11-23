import 'package:flutter/material.dart';

class ImageView extends StatelessWidget {
  const ImageView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.amber,
      body: SafeArea(
          child: Center(
        child: Column(
          children: [
            ClipOval(
                child: Image(image: AssetImage('assets/images/cat_one.jpg'))),
            ClipOval(
                child: Image(image: AssetImage('assets/images/cat_two.jpg'))),
          ],
        ),
      )),
    );
  }
}
