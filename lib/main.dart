import 'package:flutter/material.dart';
import 'package:untitled2/homePage.dart';

void main() {
  runApp( MyApp());
}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body:homePage(),
      ),
    );
  }
}
