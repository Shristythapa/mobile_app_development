import 'package:flutter/material.dart';
import 'package:mathmatical_app/area_of_circle.dart';
import 'package:mathmatical_app/reverse_string.dart';
import 'package:mathmatical_app/simple_interest.dart';
import 'package:mathmatical_app/splash.dart';
import 'package:mathmatical_app/temperature_conversion.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
       // colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.white),
        useMaterial3: true,
      ),
      home: const Splash(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  final List<Widget> _pages = [
    const AreaOfCircle(),
   const SimpleInterest(),
    const TemperatureConversion(),
    const ReverseString(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        foregroundColor: Color.fromARGB(255, 169, 11, 226),
        title: Text(widget.title),
      ),
      body: Column(
        
        children: [
          const SizedBox(
                height: 30,
              ),
          Container(
            height: 50,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                
                children: [
                  TextButton(
                    onPressed: () {
                      _onItemTapped(0);
                    },
                    child: const Text("Area of circle"),
                  ),
                  TextButton(
                    onPressed: () {
                      _onItemTapped(1);
                    },
                    child: const Text("Simple Interest"),
                  ),
                  TextButton(
                    onPressed: () {
                      _onItemTapped(2);
                    },
                    child: const Text("Temperature conversion"),
                  ),
                  TextButton(
                    onPressed: () {
                      _onItemTapped(3);
                    },
                    child: const Text("Reverse a String"),
                  )
                ],
              ),
            ),
          ),
          Expanded(
           child: Container(
            child: _pages[_currentIndex],
            )
          ),
        ],
      ),
    );
  }
}
