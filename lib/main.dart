
import 'package:flutter/material.dart';
import 'package:weather_app/Screens/Selection.dart';
import 'package:weather_app/Screens/Splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  SelectionPage(),
    );
  }
}

