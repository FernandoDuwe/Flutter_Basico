import "package:flutter/material.dart";

class CircleContainer extends StatelessWidget {
  final double size;
  final Color color;
  final Widget child;

  const CircleContainer(
      {required this.size,
      required this.color,
      required this.child,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      alignment: Alignment.center,
      child: child,
      decoration: BoxDecoration(color: color, shape: BoxShape.circle),
    );
  }
}
