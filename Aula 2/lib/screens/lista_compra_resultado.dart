import "package:flutter/material.dart";

class ListaCompraResultado extends StatelessWidget {
  final double total;
  const ListaCompraResultado({ required this.total, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Resultado da compra:"),
      ),
      body: Center(
        child: Text("O total a pagar é: ${total.toStringAsFixed(2)}"),
      ),
    );
  }
}
