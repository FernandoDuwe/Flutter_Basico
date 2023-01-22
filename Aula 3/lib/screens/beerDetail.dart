import 'package:aula3/models/beerModel.dart';
import 'package:flutter/material.dart';

class BeerDetail extends StatelessWidget {
  const BeerDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BeerModel model = ModalRoute.of(context)!.settings.arguments as BeerModel;

    return Scaffold(
      appBar: AppBar(
        title: Text(model.name),
      ),
      body: Column(
          children: [
            Text("Nome da cerveja: ${model.name}"),
            Divider(),
            Text("Preço: ${model.price}"),
            Divider(),
            Text("ID: ${model.id}")
          ],
      ),
    );
  }
}
