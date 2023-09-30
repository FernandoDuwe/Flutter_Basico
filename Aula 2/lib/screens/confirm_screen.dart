import "package:flutter/material.dart";

class ConfirmScreen extends StatelessWidget {
  final String message;

  const ConfirmScreen({required this.message, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.question_mark_rounded),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(message),
            ),
            ElevatedButton(
              onPressed: () => Navigator.of(context).pop(true),
              child: Text("Sim"),
            ),
            ElevatedButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: Text("Não")),
          ],
        ),
      ),
    );
  }
}
