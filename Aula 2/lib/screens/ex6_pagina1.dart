import "package:flutter/material.dart";
import "package:flutter_basico_2/widgets/book_page_navigator.dart";

class Ex6Pagina1 extends StatelessWidget {
  const Ex6Pagina1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Página 1", style: TextStyle(
          fontSize: 26
        ),),
      ),
      bottomNavigationBar: BookPageNavigator(
        nextRoute: "/exercicio6/pg2",
      ),
    );
  }
}
