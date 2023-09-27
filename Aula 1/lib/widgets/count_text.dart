import "package:flutter/material.dart";

class CountText extends StatelessWidget {
  final int count;
  final double? fontSize;
  final Color? positiveColor;
  final Color? negativeColor;

  const CountText(
      {required this.count,
      this.fontSize,
      this.positiveColor,
      this.negativeColor,
      super.key});

  @override
  Widget build(BuildContext context) {
    Color _positiveColor = (positiveColor ?? Colors.green);
    Color _negativeColor = (negativeColor ?? Colors.red);

    return Text(
      count.toString(),
      style: TextStyle(
          fontSize: (fontSize ?? 12),
          color: (count < 0 ? _negativeColor : _positiveColor)),
    );
  }
}
