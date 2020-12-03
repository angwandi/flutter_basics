import 'package:flutter/material.dart';

class IconButtonView extends StatefulWidget {
  static const id = 'icon';

  @override
  _State createState() => _State();
}

class _State extends State<IconButtonView> {
  int _value = 0;

  void _add() {
    setState(() {
      _value++;
    });
  }

  void _subtract() {
    setState(() {
      _value--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('IconButton'),
      ),
      body: Container(
          padding: EdgeInsets.all(32.0),
          child: Center(
            child: Column(
              children: <Widget>[
                Text('Value = ${_value}'),
                IconButton(icon: Icon(Icons.add), onPressed: _add),
                IconButton(icon: Icon(Icons.remove), onPressed: _subtract)
              ],
            ),
          )),
    );
  }
}
