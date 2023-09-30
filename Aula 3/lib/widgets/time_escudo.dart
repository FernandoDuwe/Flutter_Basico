import "package:flutter/material.dart";
import "package:flutter_basico_3/model/time_model.dart";

enum TimeSituacao { mandante, visitante }

class TimeEscudo extends StatelessWidget {
  final TimeModel timeModel;
  final TimeSituacao timeSituacao;

  const TimeEscudo(
      {required this.timeModel, required this.timeSituacao, super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> widgets = [
      Image.network(
        timeModel.escudo,
        height: 32,
        width: 32,
        errorBuilder: (context, error, stackTrace) {
          return Icon(Icons.no_photography_outlined, color: Colors.red,);
        },
      ),
      SizedBox(
        width: 10,
      ),
      Text(
        timeModel.nome,
        style: TextStyle(color: Colors.black45, fontSize: 12),
      )
    ];

    Size size = MediaQuery
        .of(context)
        .size;

    return ConstrainedBox(
      constraints: BoxConstraints(
          maxWidth: size.width / 3, minWidth: size.width / 3),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: (timeSituacao == TimeSituacao.mandante
            ? MainAxisAlignment.start
            : MainAxisAlignment.end),
        children: (timeSituacao == TimeSituacao.mandante
            ? widgets
            : widgets.reversed.toList()),
      ),
    );
  }
}
