import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final bool success;

  const ResultPage(this.success, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
              child: Icon(
            (this.success ? Icons.done_all : Icons.error),
            color: (this.success ? Colors.blueAccent : Colors.red),
            size: 128,
          )),
          Center(
            child: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 300),
              child: Text((this.success
                  ? "O usuário foi inserido com sucesso."
                  : "Ocorreu um erro ao gravar os dados do usuário")),
            ),
          ),
          SizedBox(height: 150)
        ],
      ),
    ));
  }
}
