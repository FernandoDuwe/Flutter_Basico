import "package:flutter/material.dart";
import "package:flutter_basico_2/screens/second_page.dart";

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Primeira Página"),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => SecondPage(),
                ));
              },
              child: Text("Ir para a segunda página"),
            ),
            ElevatedButton(onPressed: Navigator.of(context).canPop() ? () {
              Navigator.of(context).pop();
            } : null, child: Text("Voltar"))
          ],
        ),
      ),
    );
  }
}
