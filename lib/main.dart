import 'package:flutter/material.dart';
import 'package:branch_selection_app/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Branch Selection App',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: screen1(),
    );
  }
}
