import 'package:flutter/material.dart';
import 'package:flutter_basico/screens/confirmacaoExclusao.dart';

class ListaPessoas extends StatefulWidget {
  const ListaPessoas({Key? key}) : super(key: key);

  @override
  State<ListaPessoas> createState() => _ListaPessoasState();
}

class _ListaPessoasState extends State<ListaPessoas> {
  List pessoas = ["Fernando", "Silvia", "Henrique"];

  Future<void> Internal_Apagar(BuildContext context, index) async {
    final result = await Navigator.push(context,
        MaterialPageRoute(builder: (context) => ConfirmacaoExclusao()));

    if (!mounted)
      return;

    if (result == "sim")
      setState(() {
        pessoas.removeAt(index);
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exercício 8"),
      ),
      body: ListView.builder(
          itemCount: this.pessoas.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(this.pessoas[index]),
              trailing: IconButton(
                onPressed: () => Internal_Apagar(context, index),
                icon: Icon(Icons.delete, color: Colors.red),
              ),
            );
          }),
    );
  }
}
