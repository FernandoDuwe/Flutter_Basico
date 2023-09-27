import "package:flutter/material.dart";

typedef CountTileCustomEventClick = void Function(int newCounter);

class CountTileCustomEvent extends StatelessWidget {
  final int index;
  final int value;
  final Color? textColor;
  final CountTileCustomEventClick? onChange;

  const CountTileCustomEvent(
      {required this.index,
        required this.value,
        this.textColor,
        this.onChange,
        super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        "Contador #$index",
        style: TextStyle(color: (textColor ?? Colors.black)),
      ),
      subtitle: Text(
        "Valor atual: $value",
        style: TextStyle(color: (textColor ?? Colors.black)),
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(onPressed: () {
            if (onChange != null)
              onChange!(value + 1);
          }, icon: Icon(Icons.add)),
          IconButton(onPressed: () {
            if (onChange != null)
              onChange!(value - 1);
          }, icon: Icon(Icons.remove))
        ],
      ),
    );
  }
}
