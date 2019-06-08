import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  HomeScreen(): super();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          padding: EdgeInsets.only(top: 80, left: 15),
          child: Column(
            children: [
              Text('Stuff'),
              Text('Moo'),
              Text('Some moo stuff')            ]
          )
        )
      ),
      appBar: AppBar(
        title: Text("Native Features")
      ), body: Center(
          child: Container(
            child: Text('Tap here to get the battery'),
        )
      )
    );
  }
}