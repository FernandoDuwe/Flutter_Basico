import "dart:ffi";
import "dart:math";

import "package:flutter/material.dart";
import "package:flutter_basico_2/screens/lista_compra_resultado.dart";

import "../models/shopping_cart_model.dart";

class ListaCompras extends StatefulWidget {
  const ListaCompras({super.key});

  @override
  State<ListaCompras> createState() => _ListaComprasState();
}

class _ListaComprasState extends State<ListaCompras> {
  double valorTotal = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Lista de compras"),
          actions: [
            IconButton(
                onPressed: () {
                  Random random = Random();

                  setState(() {
                    valorTotal = valorTotal + random.nextDouble();
                  });
                },
                icon: Icon(Icons.add)),
            IconButton(
                onPressed: () {
                  Random random = Random();

                  setState(() {
                    valorTotal = valorTotal - random.nextDouble();
                  });
                },
                icon: Icon(Icons.remove))
          ],
        ),
        body: Center(
          child: Text("R\$ ${valorTotal.toStringAsFixed(2)}"),
        ),
        floatingActionButton: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            FloatingActionButton(
              backgroundColor: Colors.blueAccent,
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => ListaCompraResultado(total: valorTotal),
                ));
              },
              child: Icon(Icons.exit_to_app),
            ),
            FloatingActionButton(
              backgroundColor: Colors.green,
              child: Icon(Icons.transit_enterexit),
              onPressed: () {
                Navigator.of(context).pushNamed("/listaComprasResultado",
                    arguments: ShoppingCartModel(total: valorTotal));
              },
            )
          ],
        ));
  }
}
