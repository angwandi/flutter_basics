import 'package:flutter/material.dart';
import 'package:flutter_basics/intermediate/charts/animated_pie_chart.dart';
import 'package:flutter_basics/intermediate/charts/grouping.dart';
import 'package:flutter_basics/intermediate/charts/intro.dart';
import 'package:flutter_basics/intermediate/layout_widgets/expansion_panel.dart';

import 'basic/buttons/flat_button.dart';
import 'basic/buttons/icon_button.dart';
import 'intermediate/charts/assingment.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'FLUTTER 2ms'),
      routes: {
        FlatButtonView.id: (BuildContext context) => FlatButtonView(),
        IconButtonView.id: (BuildContext context) => IconButtonView(),
        IntroView.id: (BuildContext context) => IntroView(),
        GroupingView.id: (BuildContext context) => GroupingView(),
        ExpansionView.id: (BuildContext context) => ExpansionView(),
        AnimatedPieView.id: (BuildContext context) => AnimatedPieView(),
        AssingmentChartView.id: (BuildContext context) => AssingmentChartView(),
      },
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: ListView(
          children: [
            Items(
              title: Text('FlatButton'),
              onTap: () => Navigator.pushNamed(context, FlatButtonView.id),
            ),
            Divider(),
            Items(
              title: Text('IconButton'),
              onTap: () => Navigator.pushNamed(context, IconButtonView.id),
            ),
            Divider(),
            Items(
              title: Text('Intro Data'),
              onTap: () => Navigator.pushNamed(context, IntroView.id),
            ),
            Divider(),
            Items(
              title: Text('Grouping Data'),
              onTap: () => Navigator.pushNamed(context, GroupingView.id),
            ),
            Divider(),
            Items(
              title: Text('Expansion List'),
              onTap: () => Navigator.pushNamed(context, ExpansionView.id),
            ),
            Divider(),
            Items(
              title: Text('Animated Pie Chart'),
              onTap: () => Navigator.pushNamed(context, AnimatedPieView.id),
            ),
            Divider(),
            Items(
              title: Text('Assignment Charts'),
              onTap: () => Navigator.pushNamed(context, AssingmentChartView.id),
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}

class Items extends StatelessWidget {
  const Items({
    Key key,
    this.title,
    this.onTap,
  }) : super(key: key);
  final Text title;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      title: title,
    );
  }
}
