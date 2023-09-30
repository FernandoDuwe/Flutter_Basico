import 'package:aula2/screens/dialogUsuario.dart';
import 'package:flutter/material.dart';

class Exercicio8Sala extends StatefulWidget {
  const Exercicio8Sala({Key? key}) : super(key: key);

  @override
  State<Exercicio8Sala> createState() => _Exercicio8SalaState();
}

class _Exercicio8SalaState extends State<Exercicio8Sala> {
  List usuarios = ['Fernando', "Anderson", "Matheus", "Luis"];

  Future<void> Internal_Delete(BuildContext context, int index) async {
    dynamic result = await Navigator.of(context).push(MaterialPageRoute(builder: (context) => DialogUsuario()));

    if (!mounted)
      return;

    if (result == "sim")
      setState(() {
        this.usuarios.removeAt(index);
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Exercício 8"),
        ),
        body: ListView.builder(
          itemCount: this.usuarios.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(this.usuarios[index]),
              trailing: IconButton(
                onPressed: () => this.Internal_Delete(context, index),
                icon: Icon(Icons.delete_outline, color: Colors.red),
              ),
            );
          },
        ));
  }
}
