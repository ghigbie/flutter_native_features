import 'package:flutter/material.dart';
import 'pages/home_screen.dart';

void main() => runApp(NativeFeaturesApp());

class NativeFeaturesApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Native Features',
      theme: ThemeData.dark(),
      home: HomeScreen()
    );
  }
}
