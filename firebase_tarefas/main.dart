import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_tarefas/firebase_options.dart';
import 'package:firebase_tarefas/screens/home_screen.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  await WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  );

  runApp(FirebaseTarefas());
}

class FirebaseTarefas extends StatelessWidget {
  const FirebaseTarefas({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
