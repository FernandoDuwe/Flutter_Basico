import "package:flutter/material.dart";

class Exercicio2 extends StatelessWidget {
  const Exercicio2({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text("Exercício 2"),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ConstrainedBox(
                constraints: BoxConstraints.tight(Size(size.width / 2, size.height / 2)),
                child: Text("Teasf póajsoiasjf oisafjoisafjiosa jfiosajiof jasiofjsaiojfi soajfasiojf ioasjfiosaj iofjasiofj saioj fioasjiosajfiosajfsaiojfiosajgaiojgiojsiojaiosjgojiosajiaojgsjgoijaiojsaijgi")),
            ConstrainedBox(
              constraints: BoxConstraints(maxWidth: size.width,  minWidth: size.width / 2, minHeight: 40),
              child: ElevatedButton(onPressed: () {

              }, child: Text("Ok")),
            )
          ],
        ),
      ),
    );
  }
}
