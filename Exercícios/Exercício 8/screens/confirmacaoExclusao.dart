import 'package:flutter/material.dart';

class ConfirmacaoExclusao extends StatelessWidget {
  const ConfirmacaoExclusao({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.question_mark, size: 64),
            SizedBox(height: 50),
            Padding(
              padding: EdgeInsets.only(left: 50, right: 50),
              child: Text("Deseja realmente excluir?"),
            ),
            SizedBox(height: 25),
            ConstrainedBox(
                constraints: BoxConstraints(minWidth: 300, minHeight: 50),
                child: ElevatedButton(onPressed: () {
                  Navigator.pop(context, "sim");
                }, child: Text("Sim"), )),
            SizedBox(height: 10),
            ConstrainedBox(
                constraints: BoxConstraints(minWidth: 300, minHeight: 50),
                child: ElevatedButton(onPressed: () {
                  Navigator.pop(context, "nao");
                }, child: Text("Não"), )),
          ],
        ),
      ),
    );
  }
}
