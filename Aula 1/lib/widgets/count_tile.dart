import "package:flutter/material.dart";

class CountTile extends StatelessWidget {
  final int index;
  final int value;
  final Color? textColor;
  final VoidCallback? onAdd;
  final VoidCallback? onRemove;

  const CountTile(
      {required this.index,
      required this.value,
      this.textColor,
      this.onAdd,
      this.onRemove,
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
          IconButton(onPressed: onAdd, icon: Icon(Icons.add)),
          IconButton(onPressed: onRemove, icon: Icon(Icons.remove))
        ],
      ),
    );
  }
}
