import 'package:flutter/material.dart';
import 'package:flutter_calc/calculator.dart'; 
void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Calculator',
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new CalculatorPage(),
    );
  }
}

