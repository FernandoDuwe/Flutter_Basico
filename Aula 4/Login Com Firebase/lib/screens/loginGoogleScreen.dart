import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginGoogleScreen extends StatefulWidget {
  const LoginGoogleScreen({Key? key}) : super(key: key);

  @override
  State<LoginGoogleScreen> createState() => _LoginGoogleScreenState();
}

class _LoginGoogleScreenState extends State<LoginGoogleScreen> {
  GoogleSignIn signIn = new GoogleSignIn();
  GoogleSignInAccount? account;

  // Método que será chamado quando o Widget for adicionado a árvore de widgets do app
  @override
  void initState() {
    super.initState();

    signIn.onCurrentUserChanged.listen((GoogleSignInAccount? prAcount) {
      setState(() {
        this.account = prAcount!;
      });

      if (prAcount == null) {
        print("Efetuou logoff");
      } else {
        print(prAcount.id);
        print(prAcount.email);
      }
    });

    signIn.signInSilently();
  }

  Future<void> Internal_DoSignIn() async {
    try {
      await signIn.signIn();
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login com Google"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("ID: " + (this.account != null ? this.account!.id : "")),
            Text("E-mail: " + (this.account != null ? this.account!.email : "")),

            ElevatedButton(onPressed: () {
              this.Internal_DoSignIn();
            }, child: Text("Login com Google"))
          ],
        ),
      ),
    );
  }
}
