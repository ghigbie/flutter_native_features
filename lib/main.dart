import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'pages/home_screen.dart';
import 'constants.dart';
import 'dart:async';
import 'package:flutter/services.dart';

void main() => runApp(NativeFeaturesApp());

class NativeFeaturesApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Native Features',
      theme: ThemeData.dark(),
      home: MyHomePage(title: 'Native Features')
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {
  String _batteryLevel = 'Unknown';
  static const platform = const MethodChannel(CHANNEL_BATTERY);

  Future<void> _getBatteryLevel() async{
    String batteryLevel;
    try{
      final int result = await platform.invokeMethod(CHANNEL_METHOD_BATTERY_GET);
      batteryLevel = '${result}% Battery Level';
    }on PlatformException catch(e){
      batteryLevel = 'Failed to get batter level: ${e}';
    }catch(e){
      batteryLevel = 'Error: ${e.message}';
    }

    setState(){
      _batteryLevel = batteryLevel;
    }
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
              child: Text(_batteryLevel, style: TextStyle(fontSize: 25))
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