import 'package:flutter/material.dart';

class ContadorCor extends StatelessWidget {
  final int contador;

  const ContadorCor(this.contador, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "${this.contador}",
      style: TextStyle(
          fontSize: 32,
          color: (this.contador >= 0 ? Colors.lightGreen : Colors.redAccent)),
    );
  }
}
