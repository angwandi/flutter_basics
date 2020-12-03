import 'package:flutter/material.dart';

class FooterButton extends StatefulWidget {
  @override
  _State createState() =>  _State();
}

class _State extends State<FooterButton> {
  String _value = '';

  void _onClick(String value) => setState(() => _value = value);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:  AppBar(
        title:  Text('Name here'),
      ),
      persistentFooterButtons: <Widget>[
         IconButton(
            icon:  Icon(Icons.timer), onPressed: () => _onClick('Button 1')),
         IconButton(
            icon:  Icon(Icons.people),
            onPressed: () => _onClick('Button 2')),
         IconButton(
            icon:  Icon(Icons.map), onPressed: () => _onClick('Button 3')),
      ],
      body:  Container(
          padding:  EdgeInsets.all(32.0),
          child:  Center(
            child:  Text(_value),
          )),
    );
  }
}
