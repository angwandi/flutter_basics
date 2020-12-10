

import 'package:flutter/material.dart';

class IndexedStackView extends StatelessWidget {
  static const id='index';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Stack()
        )
    );
  }
}

class Stack extends StatefulWidget {

  StackState createState() => StackState();

}

class StackState extends State<Stack>{

  int indexPosition = 0 ;

  loadNextWidget(){

    if(indexPosition < 2){

      setState(() {
        indexPosition ++ ;
      });

    }else{
      setState(() {
        indexPosition = 0 ;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('IndexedStack Widget in Flutter')),
        body: Center(child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            IndexedStack(
              index: indexPosition,
              children: <Widget>[
                Container(
                    width: 200,
                    height: 200,
                    color: Colors.pink,
                    child: Center(
                        child: Text('Widget - 1',
                          style: TextStyle(fontSize: 25,
                              color: Colors.white),))
                ),

                Container(
                    width: 200,
                    height: 200,
                    color: Colors.green,
                    child: Center(
                        child: Text('Widget - 2',
                          style: TextStyle(fontSize: 25,
                              color: Colors.white),))
                ),

                Container(
                    width: 200,
                    height: 200,
                    color: Colors.lightBlue,
                    child: Center(
                        child: Text('Widget - 3',
                          style: TextStyle(fontSize: 25,
                              color: Colors.white),))
                ),

              ],
            ),

            Container(
                margin: const EdgeInsets.fromLTRB(20, 100, 20, 20),
                child:
                RaisedButton(
                  onPressed: () => loadNextWidget(),
                  child: Text(' Show Next Widget ', style: TextStyle(fontSize: 20),),
                  textColor: Colors.white,
                  color: Colors.green,
                  padding: EdgeInsets.fromLTRB(12, 12, 12, 12),
                )
            )

          ],))
    );
  }
}