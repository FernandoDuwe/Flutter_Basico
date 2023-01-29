import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class PetShopScreen extends StatelessWidget {
  const PetShopScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                height: 120,
                width: 120,
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 30, bottom: 100),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromRGBO(255, 230, 255, 100)),
                child: RiveAnimation.asset(
                    "assets/4037-8438-first-animation.riv")),
            Text(
              AppLocalizations.of(context)!.home_title,
              style: TextStyle(fontSize: 24, fontFamily: "Cursive"),
            ),
            SizedBox(height: 30),
            ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 300),
              child: Text(
                AppLocalizations.of(context)!.home_subTitle,
                style: TextStyle(fontFamily: "Cursive"),
              ),
            ),
            SizedBox(height: 30),
            Text(
              AppLocalizations.of(context)!.home_address,
              style: TextStyle(fontFamily: "Cursive"),
            ),
            SizedBox(height: 30),
            TextButton(
                onPressed: () {},
                child: Text(
                  AppLocalizations.of(context)!.home_contactButton,
                  style: TextStyle(fontFamily: "Cursive", color: Colors.purpleAccent, fontSize: 18),
                ))
          ],
        ),
      ),
    );
  }
}
