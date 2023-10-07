import "package:firebase_auth/firebase_auth.dart";
import "package:flutter/material.dart";
import "package:google_sign_in/google_sign_in.dart";

class UserCadAuth extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  UserCadAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: emailController,
                decoration: InputDecoration(labelText: "E-mail"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: passwordController,
                decoration: InputDecoration(labelText: "Senha"),
              ),
            ),
            Padding(
                padding: const EdgeInsets.all(10.0),
                child: ElevatedButton(
                  child: Text("Login com Google"),
                  onPressed: () async {
                    GoogleSignIn googleSignIn = GoogleSignIn(
                        clientId:
                            "1086179188580-5r0i4evh5ula7qmoqt00atcgang8rjj9.apps.googleusercontent.com");

                    GoogleSignInAccount? account = await googleSignIn.signIn();

                    if (account != null) print(account);
                  },
                ))
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FloatingActionButton(
            onPressed: () {
              FirebaseAuth.instance
                  .signInWithEmailAndPassword(
                      email: emailController.text,
                      password: passwordController.text)
                  .then((value) {
                print("44");

                print(value);
              });
            },
            child: Icon(Icons.login),
          ),
          FloatingActionButton(
            onPressed: () {
              FirebaseAuth.instance.createUserWithEmailAndPassword(
                  email: emailController.text,
                  password: passwordController.text);
            },
            child: Icon(Icons.save),
          ),
        ],
      ),
    );
  }
}
