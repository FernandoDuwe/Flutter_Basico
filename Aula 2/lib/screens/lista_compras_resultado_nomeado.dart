import "package:flutter/material.dart";
import "package:flutter_basico_2/models/shopping_cart_model.dart";

class ListaComprasResultadoNomeado extends StatelessWidget {
  const ListaComprasResultadoNomeado({super.key});

  @override
  Widget build(BuildContext context) {
    ShoppingCartModel valor = (ModalRoute.of(context)!.settings.arguments) as ShoppingCartModel;

    return Scaffold(
      appBar: AppBar(
        title: Text("Resultado nomeado"),
      ),
      body: Center(
        child: Text(valor.total.toStringAsFixed(2)),
      ),
    );
  }
}
