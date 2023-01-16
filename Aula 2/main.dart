import 'package:aula2/screens/PageBook.dart';
import 'package:aula2/screens/boasVindasAluno.dart';
import 'package:aula2/screens/cadastroAluno.dart';
import 'package:aula2/screens/exercicio5sala.dart';
import 'package:aula2/screens/paginaInicia.dart';
import 'package:aula2/screens/pergunta.dart';
import 'package:aula2/screens/primeiraTela.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: "/",
    routes: {
      "/": (context) => PaginaInicial(),
      "/exercicio5": (context) => Exercicio5Sala(),
      "/exercicio6": (context) => PageBook(1),
      "/cadastroAlunos": (context) => CadastroAluno(),
      "/boasVindasAluno": (context) => BoasVindasAluno()
    },
  ));
}
