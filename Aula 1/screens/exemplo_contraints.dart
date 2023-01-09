import 'package:flutter/material.dart';

class ExemploConstriants extends StatelessWidget {
  const ExemploConstriants({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            ConstrainedBox(
              constraints: BoxConstraints.expand(height: 100),
              child: Text(
                  "Texto muito grande iasjfosaijfhiosajfioaso hsfoihaiofhasiofhiosahsio"),
            ),
            Container(
              constraints: BoxConstraints(
                minHeight: 100,
                maxHeight: 100,
              ),
              height: 100,
              width: 100,
              color: Colors.amber,
            )
          ],
        ),
      ),
    );
  }
}
