import 'package:flutter/material.dart';

/*
*
* É importante notar que esse widget foi criado como stateless, ou seja,
* sem estados. Isso foi feito, pois o controle de estados está sendo feito
* no widget no qual este é chamado, sendo ele responsável somente por exibir
* o valor e pinta-lo de acordo com a regra estipulada.
*
* */

class CounterText extends StatelessWidget {
  final int counter;

  const CounterText(this.counter, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        child: Text(
          "${this.counter}",
          style: TextStyle(
            fontSize: 32,
            color: (this.counter >= 0 ? Colors.lightGreen : Colors.red)
          ),
        ),
        padding: EdgeInsets.only(top: 30, bottom: 30, left: 10, right: 10));
  }
}
