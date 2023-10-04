import 'package:aula4/models/gifModel.dart';
import 'package:flutter/material.dart';

class GifTile extends StatelessWidget {
  final GifModel model;

  const GifTile(this.model, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image(image: NetworkImage(this.model.urlImage)),
        SizedBox(height: 5),
        Text(
          this.model.title
        )
      ],
    );
  }
}
