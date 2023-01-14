import 'package:flutter/material.dart';
import 'package:flutter_basico/screens/bookPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/1",
      routes: {
        "/1": (context) => BookPage(1),
        "/2": (context) => BookPage(2),
        "/3": (context) => BookPage(3),
        "/4": (context) => BookPage(4),
        "/5": (context) => BookPage(5),
      },
    );
  }
}
