import 'package:flutter/material.dart';

void main() => runApp(NativeFeaturesApp());

class NativeFeaturesApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Native Features',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey[300],
      ),
      home: HomeScreen(title: 'Native Features Home Screen')
    );
  }
}
