import "package:flutter/material.dart";
import "package:flutter_basico_aula1/widgets/user_swipe_response.dart";

class Exercicio4 extends StatefulWidget {
  const Exercicio4({super.key});

  @override
  State<Exercicio4> createState() => _Exercicio4State();
}

class _Exercicio4State extends State<Exercicio4> {
  int countPositive = 0;
  int countNegative = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exercício 4"),
        actions: [
          Text("+ $countPositive", style: TextStyle(fontSize: 22),),
          SizedBox(width: 20,),
          Text("- $countNegative", style: TextStyle(fontSize: 22),)
        ],
      ),
      body: Center(
        child: Icon(Icons.person, size: 200, color: Colors.blue),
      ),
      bottomSheet: UserSwipeResponse(
        onResponse: (responseType) {
          if (responseType == UserSwipeResponseType.positive) {
            setState(() {
              countPositive++;
            });
          }

          if (responseType == UserSwipeResponseType.negative) {
            setState(() {
              countNegative++;
            });
          }
        },
      ),
    );
  }
}
