import 'package:flutter/material.dart';

class PageBook extends StatelessWidget {
  final int numeroPagina;

  const PageBook(this.numeroPagina, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: Center(
                child: Text(
                  "Página nº: ${this.numeroPagina}",
                  style: TextStyle(fontSize: 52),
                ),
              )),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                (this.numeroPagina == 1 ? Container() :

                IconButton(onPressed: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => PageBook(this.numeroPagina - 1),));
                }, icon: Icon(Icons.arrow_back_ios))

                ),

                /*
                IconButton(onPressed: (this.numeroPagina == 1 ? null : () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => PageBook(this.numeroPagina - 1),));
                }), icon: Icon(Icons.arrow_back_ios)),
                 */

                Expanded(child: Container()),
                IconButton(onPressed: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => PageBook(this.numeroPagina + 1),));
                }, icon: Icon(Icons.arrow_forward_ios))
              ],
            ),
          )
        ],
      ),
    );
  }
}
