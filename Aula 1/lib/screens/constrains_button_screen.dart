import "package:flutter/material.dart";

class ConstraintsButtonScreen extends StatelessWidget {
  const ConstraintsButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Constraints + Buttons"),
      ),
      body: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints.tightForFinite(height: double.infinity, width: double.infinity),
          child: ElevatedButton(
            onPressed: () {

            },
            child: Text("Oi"),
          ),
        ),
      ),
    );
  }
}
