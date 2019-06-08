import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter/services.dart';

class HomeScreen extends StatelessWidget{
  HomeScreen(): super();

  String _batteryLevel = 'Unknown';

  Future<void> _getBatteryLevel(){
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          padding: EdgeInsets.only(top: 80, left: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Stuff'),
              Text('Moo'),
              Text('Some moo stuff')            ]
          )
        )
      ),
      appBar: AppBar(
        title: Text("Native Features")
      ), 
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(bottom: 20),
              child: Text('${_batteryLevel} battery level', style: TextStyle(fontSize: 25))
            ),
            RaisedButton(
              child: Text('Get Battery Level'),
              onPressed: (){

              },
            ),
          ]
      )
    ),
    );
  }
}