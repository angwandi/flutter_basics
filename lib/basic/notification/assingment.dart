import 'package:flutter/material.dart';

void main() {
  runApp( MaterialApp(
    home:  MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() =>  _State();
}

class _State extends State<MyApp> {

  String _value = '';
  final GlobalKey<ScaffoldState> _scaffoldstate =  GlobalKey<ScaffoldState>();

  void _showBar(String message) {
    _scaffoldstate.currentState.showSnackBar( SnackBar(content:  Text(message)));
  }

  void _onChanged(String value) {
    setState((){
      _value = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      key: _scaffoldstate,
      appBar:  AppBar(
        title:  Text('Name here'),
      ),
      body:  Container(
          padding:  EdgeInsets.all(32.0),
          child:  Center(
            child:  Column(
              children: <Widget>[
                 Text('Enter your name'),
                 TextField(onChanged: _onChanged,),
                 RaisedButton(onPressed: () => _showBar('Hello ${_value}'), child:  Text('Click me'),)
              ],
            ),
          )
      ),
    );
  }
}
