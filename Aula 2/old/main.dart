import 'package:aula2/screens/PageBook.dart';
import 'package:aula2/screens/boasVindasAluno.dart';
import 'package:aula2/screens/boasVindasUsuario.dart';
import 'package:aula2/screens/cadastroAluno.dart';
import 'package:aula2/screens/exercicio5sala.dart';
import 'package:aula2/screens/exercicio7sala.dart';
import 'package:aula2/screens/exercicio8sala.dart';
import 'package:aula2/screens/paginaInicia.dart';
import 'package:aula2/screens/parOuImpar.dart';
import 'package:aula2/screens/parOuImparResultado.dart';
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
      "/exercicio7": (context) => Exercicio7Sala(),
      "/exercicio8": (context) => Exercicio8Sala(),
      "/cadastroAlunos": (context) => CadastroAluno(),
      "/boasVindasAluno": (context) => BoasVindasAluno(),
      "/boasVindasUsuario": (context) => BoasVindasUsuario(),
      "/parOuImpar": (context) => ParOuImpar(),
      "/resultadoParImpar": (context) => ParOuImparResultado()
    },
  ));
}
