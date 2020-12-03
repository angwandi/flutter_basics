import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FlatButtonView extends StatefulWidget {
  static const id = 'flat_view';

  @override
  _State createState() => _State();
}

class _State extends State<FlatButtonView> {
  final _kTabPages = [
    FlatButtonPreview(),
    FlatButtonCode(),
  ];
  final _kTabs = <Tab>[
    const Tab(
      text: 'Preview',
    ),
    const Tab(
      text: 'Code',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _kTabs.length,
      child: Scaffold(
          appBar: AppBar(
            title: Text('FlatButton'),
            bottom: TabBar(
              tabs: _kTabs,
            ),
          ),
          body: TabBarView(
            children: _kTabPages,
          )),
    );
  }
}

class FlatButtonPreview extends StatefulWidget {
  @override
  _FlatButtonPreviewState createState() => _FlatButtonPreviewState();
}

class _FlatButtonPreviewState extends State<FlatButtonPreview> {
  String _value = 'Hello world';

  void _onPressed() {
    setState(() {
      _value = DateTime.now().toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(32.0),
      child: Center(
        child: Column(
          children: <Widget>[
            Text(_value),
            FlatButton(
              onPressed: _onPressed,
              child: Text('Click me'),
            )
          ],
        ),
      ),
    );
  }
}

class FlatButtonCode extends StatefulWidget {
  @override
  _FlatButtonCodeState createState() => _FlatButtonCodeState();
}

class _FlatButtonCodeState extends State<FlatButtonCode> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        shrinkWrap: true,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              '''
class FlatButtonPreview extends StatefulWidget {
  @override
  _FlatButtonPreviewState createState() => _FlatButtonPreviewState();
}

class _FlatButtonPreviewState extends State<FlatButtonPreview> {
  String _value = 'Hello world';

  void _onPressed() {
    setState(() {
      _value = DateTime.now().toString();
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(32.0),
      child: Center(
        child: Column(
            children: <Widget>[
              Text(_value),
              FlatButton(
                onPressed: _onPressed,
                child: Text('Click me'),
              )
            ],
        ),
      ),
    );
  }
}
        ''',
              style: Theme.of(context).textTheme.headline6.copyWith(
                height: 1.5,
              ),
            ),
          )
        ],
      ),
    );
  }
}
