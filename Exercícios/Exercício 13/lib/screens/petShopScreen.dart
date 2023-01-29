import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

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
              "PetShop Cão limpinho",
              style: TextStyle(fontSize: 24, fontFamily: "Cursive"),
            ),
            SizedBox(height: 30),
            ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 300),
              child: Text(
                "No PetShop Cão limpinho seu vavau é tratado como rei. ",
                style: TextStyle(fontFamily: "Cursive"),
              ),
            ),
            SizedBox(height: 30),
            Text(
              "Rua bla bla bla",
              style: TextStyle(fontFamily: "Cursive"),
            ),
            SizedBox(height: 30),
            TextButton(
                onPressed: () {},
                child: Text(
                  "Contato",
                  style: TextStyle(fontFamily: "Cursive", color: Colors.purpleAccent, fontSize: 18),
                ))
          ],
        ),
      ),
    );
  }
}
