import 'package:flutter/material.dart';

class DialogUsuario extends StatelessWidget {
  const DialogUsuario({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Questão"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.question_mark,
                size: 128,
                color: Colors.yellow,
              ),
              SizedBox(
                height: 30,
              ),
              Text("Deseja realmente excluir?"),
              ConstrainedBox(
                  constraints: BoxConstraints(minHeight: 100, minWidth: 200),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop("sim");
                    },
                    child: Text("Sim"),
                  )),
              ConstrainedBox(
                  constraints: BoxConstraints(minHeight: 100, minWidth: 200),
                  child: ElevatedButton(onPressed: () {
                    Navigator.of(context).pop("nao");
                  }, child: Text("Não")))
            ],
          ),
        ));
  }
}
