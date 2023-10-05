import "package:flutter/material.dart";
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Exercicio14 extends StatelessWidget {
  const Exercicio14({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[50],
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
              backgroundColor: Colors.white,
              radius: 130,
              child: Image.network(
                  "https://cdn-icons-png.flaticon.com/512/616/616408.png",
                  height: 128),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              "Petshop",
              style: TextStyle(fontSize: 22),
            ),
            SizedBox(
              height: 20,
            ),
            Text(AppLocalizations.of(context)!.petshop_welcome),
            SizedBox(
              height: 50,
            ),
            TextButton(
                onPressed: () {},
                child: Text(AppLocalizations.of(context)!.petshop_contact_us))
          ],
        ),
      ),
    );
  }
}
