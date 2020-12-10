import 'package:flutter/material.dart';
import 'package:flutter_basics/basic/input_widgets/text_feild.dart';

class StepperFormsView extends StatefulWidget {
  static const id = 'forms';

  @override
  State<StatefulWidget> createState() {
    return MyAppScreenMode();
  }
}

class MyAppScreenMode extends State<StepperFormsView> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: StepperBody(),
    );
  }
}

class StepperBody extends StatefulWidget {
  @override
  _StepperBodyState createState() => _StepperBodyState();
}

class _StepperBodyState extends State<StepperBody> {
  int i = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tabs'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: IndexedStack(
              index: i,
              children: <Widget>[
                EditTextFieldView(),
                Form2(),
              ],
            ),
          ),
          i != 1
              ? RaisedButton(
                  onPressed: () {
                    setState(() {
                      if (i < 1) {
                        i++;
                      } else {
                        i = 0;
                      }
                    });
                  },
                  child: Text('Show Next Widget'),
                )
              : RaisedButton(
                  onPressed: () {
                    setState(() {
                        i--;
                    });
                  },
                  child: Text('Save'),
                )
        ],
      ),
    );
  }
}

class Form2 extends StatefulWidget {
  @override
  _Form2State createState() => _Form2State();
}

class _Form2State extends State<Form2> {
  String _value = '';

  void _onChange(String value) {
    setState(() => _value = 'Change: ${value}');
  }

  void _onSubmit(String value) {
    setState(() => _value = 'Submit: ${value}');
  }

  bool _value1 = false;

  void _onChanged1(bool value) => setState(() => _value1 = value);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      icon: new Icon(Icons.people)),
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
                      icon: new Icon(Icons.people)),
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
                      icon: new Icon(Icons.people)),
                  autocorrect: true,
                  autofocus: true,
                  keyboardType: TextInputType.text,
                  onChanged: _onChange,
                  onSubmitted: _onSubmit,
                ),
                new Switch(value: _value1, onChanged: _onChanged1),
              ],
            ),
          )),
    );
  }
}
