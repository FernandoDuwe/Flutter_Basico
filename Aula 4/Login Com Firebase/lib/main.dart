import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basico2/screens/loginGoogleScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  bool _initialized = false;
  bool _erro = false;

  // Inicializando o Firebase
  Future<void> Internal_InicializeFlutterFirebase() async {
    try {
      await Firebase.initializeApp();

      setState(() {
        this._initialized = true;
      });
    } catch (e) {
      setState(() {
        this._erro = true;
      });
    }
  }

  // Método que será chamado quando o Widget for adicionado a árvore de widgets do app
  @override
  void initState() {
    this.Internal_InicializeFlutterFirebase();

    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       theme: ThemeData.dark(
          useMaterial3: true
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => LoginGoogleScreen(),
      },
    );
  }
}