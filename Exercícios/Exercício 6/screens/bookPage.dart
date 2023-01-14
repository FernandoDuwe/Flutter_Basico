import 'package:flutter/material.dart';

class BookPage extends StatelessWidget {
  final int currentPage;

  const BookPage(this.currentPage, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
              child: Center(
            child: Text("Página ${this.currentPage}",
                style: TextStyle(fontSize: 32)),
          )),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: () => Navigator.of(context)
                      .pushReplacementNamed("/${this.currentPage - 1}"),
                  icon: Icon(Icons.arrow_back_sharp)),
              Expanded(child: Container()),
              IconButton(
                  onPressed: () => Navigator.of(context)
                      .pushReplacementNamed("/${this.currentPage + 1}"),
                  icon: Icon(Icons.arrow_forward_sharp)),
            ],
          )
        ],
      ),
    );
  }
}
