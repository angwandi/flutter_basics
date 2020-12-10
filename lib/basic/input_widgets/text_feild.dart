import 'package:flutter/material.dart';

class EditTextFieldView extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<EditTextFieldView> {

  String _value = '';

  void _onChange(String value) {
    setState(() => _value = 'Change: ${value}');
  }

  void _onSubmit(String value) {
    setState(() => _value = 'Submit: ${value}');
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
          padding: new EdgeInsets.all(32.0),
          child: new Center(
            child: new Column(
              children: <Widget>[
                new Text(_value),
                new TextField(
                  decoration: new InputDecoration(
                      labelText: 'Hello',
                      hintText: 'Hint',
                      icon: new Icon(Icons.people)
                  ),
                  autocorrect: true,
                  autofocus: true,
                  keyboardType: TextInputType.text,
                  onChanged: _onChange,
                  onSubmitted: _onSubmit,
                ),
                new TextField(
                  decoration: new InputDecoration(
                      labelText: 'Hello',
                      hintText: 'Hint',
                      icon: new Icon(Icons.people)
                  ),
                  autocorrect: true,
                  autofocus: true,
                  keyboardType: TextInputType.text,
                  onChanged: _onChange,
                  onSubmitted: _onSubmit,
                ),
                new TextField(
                  decoration: new InputDecoration(
                      labelText: 'Hello',
                      hintText: 'Hint',
                      icon: new Icon(Icons.people)
                  ),
                  autocorrect: true,
                  autofocus: true,
                  keyboardType: TextInputType.text,
                  onChanged: _onChange,
                  onSubmitted: _onSubmit,
                ),

              ],
            ),
          )
      ),
    );
  }
}