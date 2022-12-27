import 'package:flutter/material.dart';
import 'package:flutter_basico/screens/exercicio1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Exercicio1() // Chamando a tela do exercício 1
    );
  }
}
