import "package:flutter/material.dart";
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.schedule,
              size: 128,
            ),
            SizedBox(
              height: 30,
            ),
            Text(AppLocalizations.of(context)!.welcome_text),
            SizedBox(
              height: 30,
            ),
            TextButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text(
                          AppLocalizations.of(context)!.welcome_more_info)));
                },
                child: Text(AppLocalizations.of(context)!.welcome_button_start))
          ],
        ),
      ),
    );
  }
}
