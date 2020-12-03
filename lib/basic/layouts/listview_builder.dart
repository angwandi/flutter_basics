import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import 'dart:io';

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

  Map _countries =  Map();

  void _getData() async {
    var url = 'http://country.io/names.json';
    var response = await http.get(url);

    if(response.statusCode == 200) {
      setState(() => _countries = json.decode(response.body));
      print('Loaded ${_countries.length} countries');
    } else {
      print("Status code: ${response.statusCode}");
    }
  }


  @override
  Widget build(BuildContext context) {

    //_getData();

    return  Scaffold(
      appBar:  AppBar(
        title:  Text('Name here'),
      ),
      body:  Container(
          padding:  EdgeInsets.all(32.0),
          child:  Center(
            child:  Column(
              children: <Widget>[
                 Text('Countries', style:  TextStyle(fontWeight: FontWeight.bold),),
                 Expanded(child:  ListView.builder(
                  itemCount: _countries.length,
                  itemBuilder: (BuildContext context, int index){
                    String key = _countries.keys.elementAt(index);
                    return  Row(
                      children: <Widget>[
                         Text('$key : '),
                         Text(_countries[key])
                      ],
                    );
                  },

                ))

              ],
            ),
          )
      ),
    );
  }

  @override
  void initState() {
    _getData();
  }
}