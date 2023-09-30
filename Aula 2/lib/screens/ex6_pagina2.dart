import "package:flutter/material.dart";

import "../widgets/book_page_navigator.dart";

class Ex6Pagina2 extends StatelessWidget {
  const Ex6Pagina2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Página 2",
          style: TextStyle(fontSize: 26),
        ),
      ),
      bottomNavigationBar: BookPageNavigator(
        previousRoute: "/exercicio6/pg1",
        nextRoute: "/exercicio6/pg3",
      ),
    );
  }
}
