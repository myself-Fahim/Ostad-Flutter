import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_project/Extension.dart';
import 'package:flutter_project/Home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
