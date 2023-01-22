import 'package:aula3/screens/beerDetail.dart';
import 'package:aula3/screens/coffeList.dart';
import 'package:aula3/screens/exercicio9sala.dart';
import 'package:aula3/screens/paginaInicial.dart';
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
        "/": (context) => PaginaInicial(),
        "/coffeList": (context) => CoffeList(),
        "/exercicio9": (context) => Exercicio9(),
        "/beerDetail": (context) => BeerDetail(),
      },
    );
  }
}
