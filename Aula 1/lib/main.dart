import 'package:flutter/material.dart';
import 'package:flutter_basico_aula1/screens/exercicio_1.dart';
import 'package:flutter_basico_aula1/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Exercicio1(),
    );
  }
}
