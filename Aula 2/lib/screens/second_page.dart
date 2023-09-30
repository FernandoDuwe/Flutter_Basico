import "package:flutter/material.dart";

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Segunda página"),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("Esta é a segunda página"),
            ElevatedButton(onPressed: () {
              Navigator.of(context).pop();
            }, child: Text("Voltar"))
          ],
        ),
      ),
    );
  }
}
