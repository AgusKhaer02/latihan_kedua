import 'package:flutter/material.dart';
import 'package:latihan_kedua/pages/Home.dart';
import 'package:latihan_kedua/pages/SignIn.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "News App UI",
      debugShowCheckedModeBanner: false,
      home: SignIn(),
    );
  }
}
