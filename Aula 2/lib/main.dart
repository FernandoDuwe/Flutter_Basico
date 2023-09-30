import 'package:flutter/material.dart';
import 'package:flutter_basico_2/screens/cad_user_form.dart';
import 'package:flutter_basico_2/screens/ex5_segunda_tela.dart';
import 'package:flutter_basico_2/screens/ex6_pagina1.dart';
import 'package:flutter_basico_2/screens/ex6_pagina2.dart';
import 'package:flutter_basico_2/screens/ex6_pagina3.dart';
import 'package:flutter_basico_2/screens/exercicio8.dart';
import 'package:flutter_basico_2/screens/exercicio_5.dart';
import 'package:flutter_basico_2/screens/firstPage.dart';
import 'package:flutter_basico_2/screens/lista_compra_resultado.dart';
import 'package:flutter_basico_2/screens/lista_compras.dart';
import 'package:flutter_basico_2/screens/lista_compras_resultado_nomeado.dart';
import 'package:flutter_basico_2/screens/user_login_form.dart';
import 'package:flutter_basico_2/screens/user_welcome_form.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/exercicio8",
      routes: {
        "/listaCompras": (context) => ListaCompras(),
        "/listaComprasResultado": (context) => ListaComprasResultadoNomeado(),
        "/exercicio5": (context) => Exercicio5(),
        "/exercicio5/segundaTela": (context) => Ex5SegundaTela(),
        "/exercicio6/pg1": (context) => Ex6Pagina1(),
        "/exercicio6/pg2": (context) => Ex6Pagina2(),
        "/exercicio6/pg3": (context) => Ex6Pagina3(),
        "/exercicio7": (context) => UserLoginForm(),
        "/exercicio/welcome": (context) => UserWelcomeForm(),
        "/cadUser": (context) => CadUserForm(),
        "/exercicio8": (context) => Exercicio8(),
      },
    );
  }
}
