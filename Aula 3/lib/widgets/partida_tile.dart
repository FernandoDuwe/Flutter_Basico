import "package:flutter/material.dart";
import "package:flutter_basico_3/model/partida_model.dart";
import "package:flutter_basico_3/widgets/time_escudo.dart";

class PartidaTile extends StatelessWidget {
  final PartidaModel partidaModel;

  const PartidaTile({required this.partidaModel, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Text(
              this.partidaModel.campeonato,
              style: TextStyle(color: Colors.black26, fontSize: 10),
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TimeEscudo(timeModel: partidaModel.mandante, timeSituacao: TimeSituacao.mandante),
              Text(
                "${partidaModel.placar_mandante} x ${partidaModel.placar_visitante}",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              TimeEscudo(timeModel: partidaModel.visitante, timeSituacao: TimeSituacao.visitante,)
            ],
          )
        ],
      ),
    );
  }
}
