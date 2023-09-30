import "package:flutter/material.dart";

class BookPageNavigator extends StatelessWidget {
  final String? nextRoute;
  final String? previousRoute;

  const BookPageNavigator({this.nextRoute, this.previousRoute, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        (previousRoute == null
            ? Container(height: 0, width: 0,)
            : IconButton(
                onPressed: () {
                  Navigator.of(context)
                      .pushReplacementNamed(this.previousRoute!);
                },
                icon: Icon(Icons.arrow_back_ios))),
        (nextRoute == null
            ? Container(height: 0, width: 0,)
            : IconButton(
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed(this.nextRoute!);
                },
                icon: Icon(Icons.arrow_forward_ios)))
      ],
    );
  }
}
