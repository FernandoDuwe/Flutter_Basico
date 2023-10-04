import 'package:aula4/screens/exercicio10Sala.dart';
import 'package:aula4/screens/homePageScreen.dart';
import 'package:aula4/screens/riveScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => HomePageScreen(),
        "/exercicio10Sala": (context) => Exercicio10Sala(),
        "/riveScreen": (context) => RiveScreen(),
      },
    );
  }
}
