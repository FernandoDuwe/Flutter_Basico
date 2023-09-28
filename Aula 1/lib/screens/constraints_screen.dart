import "package:flutter/material.dart";

class ConstraintsScreen extends StatelessWidget {
  const ConstraintsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Constraints"),
      ),
      body: Center(child: Container(
        constraints: BoxConstraints(
          maxHeight: 600,
          maxWidth: 600
        ),
        color: Colors.red,
        alignment: Alignment.center,
        child: Container(
          constraints: BoxConstraints(
            minHeight: 150,
            minWidth: 150
          ),
          height: 1, width: 1,
          color: Colors.green,
        ),
      )),
    );
  }
}
