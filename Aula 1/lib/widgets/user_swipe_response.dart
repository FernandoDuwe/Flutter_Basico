import "package:flutter/material.dart";
import "package:flutter_basico_aula1/widgets/circle_container.dart";

enum UserSwipeResponseType { positive, negative }

typedef UserSwipeResponseOnResponse = void Function(UserSwipeResponseType responseType);

class UserSwipeResponse extends StatelessWidget {
  final UserSwipeResponseOnResponse onResponse;

  UserSwipeResponseType currentResponse = UserSwipeResponseType.negative;

  UserSwipeResponse({ required this.onResponse, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: GestureDetector(
        onPanUpdate: (details) {
          if (details.delta.dx > 0) {
            currentResponse = UserSwipeResponseType.positive;
          } else {
            currentResponse = UserSwipeResponseType.negative;
          }
        },
        onPanEnd: (details) {
          onResponse(currentResponse);
        },
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleContainer(
                size: 64, color: Colors.red, child: Icon(Icons.cancel_outlined)),
            CircleContainer(
                size: 96, color: Colors.grey, child: Icon(Icons.question_mark)),
            CircleContainer(
                size: 64, color: Colors.green, child: Icon(Icons.check)),
          ],
        ),
      ),
    );
  }
}
