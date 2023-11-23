import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:rive/rive.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  late Artboard _artboard;

  @override
  void initState() {
    super.initState();
    _loadRiveFile();
  }

  void _loadRiveFile() async {
    final riveFile =
        RiveFile.import(await rootBundle.load('assets/splash_screen.riv'));
    setState(() => _artboard = riveFile.mainArtboard
      ..addController(SimpleAnimation('Animation')));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _artboard != null
                ? Rive(artboard: _artboard, fit: BoxFit.cover)
                : const CircularProgressIndicator(),
            const SizedBox(height: 20),
            TyperAnimatedTextKit(
              onTap: () {
                print("Tap Event");
              },
              text: const ["Your App Name"],
              textStyle:
                  const TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
              speed: const Duration(milliseconds: 200),
            ),
            const SizedBox(height: 10),
            TyperAnimatedTextKit(
              onTap: () {
                print("Tap Event");
              },
              text: const ["Your Slogan"],
              textStyle: const TextStyle(fontSize: 18.0, color: Colors.grey),
              speed: const Duration(milliseconds: 100),
            ),
          ],
        ),
      ),
    );
  }
}
