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
            RaisedButton(
              child: Text('Get Battery Level'),
              onPressed: (){

              },
            ),
            Container(
              padding: EdgeInsets.only(top: 10),
              child: Text('58% battery level')
            )
          ]
      )
    ),
    );
  }
}