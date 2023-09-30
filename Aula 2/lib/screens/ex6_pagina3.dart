import "package:flutter/material.dart";

import "../widgets/book_page_navigator.dart";

class Ex6Pagina3 extends StatelessWidget {
  const Ex6Pagina3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Página 3",
          style: TextStyle(fontSize: 26),
        ),
      ),
      bottomNavigationBar: BookPageNavigator(
        previousRoute: "/exercicio6/pg2",
      ),
    );
  }
}
