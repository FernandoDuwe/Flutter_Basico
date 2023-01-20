import 'package:flutter/material.dart';
import 'package:flutter_basico/models/GifImageModel.dart';

class GifTile extends StatelessWidget {
  final GifImageModel gifModel;

  const GifTile(this.gifModel, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Image.network(
            this.gifModel.imageURL,
            fit: BoxFit.contain,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Column(
            children: [
              Text(this.gifModel.title, style: TextStyle(fontSize: 12)),
              Text(this.gifModel.usuario, style: TextStyle(fontSize: 8)),
            ],
          ),
        )
      ],
    );
  }
}
