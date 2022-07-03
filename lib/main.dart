import 'package:flutter/material.dart';
import 'package:weather_app/Screens/Home.dart';
import 'package:weather_app/Screens/SelectCity.dart';
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
      initialRoute: "/",
      onGenerateRoute: (RouteSettings settings) {
        Map<String, Widget> pages = {
          "/": Splash(),
          "/selection": SelectionPage(),
          "/selectCity": SelectCity(),
          "/home": Home(),
        };
        var pageToShow = pages[settings.name] ?? Splash();
        if (settings.name == "/") {
          pageToShow = Splash();
        } else if (settings.name == "/selection") {
          pageToShow = SelectionPage();
        } else if (settings.name == "/selectCity") {
          pageToShow = SelectCity();

        } else if (settings.name == "/home") {
          pageToShow = Home();
        }
        return MaterialPageRoute<String>(
            builder: (ctx) => pageToShow, settings: settings);
      },
      home: Splash(),
    );
  }
}
