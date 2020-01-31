import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:json_test_flutter_app/user.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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
  var jsonString = '{"name": "John Smith", "e_mail": "john@example.com"}';
  Map userMap;
  User user;

  @override
  void initState() {
    userMap = jsonDecode(jsonString);
    user = User.fromJson(userMap);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('user is ${user.name}', textScaleFactor: 1.5,),
            SizedBox(height: 25,),
            Text('email is ${user.e_mail}', textScaleFactor: 1.5,),
            SizedBox(height: 25,),
            Text('encoding is ${user.toJson().toString()}', textScaleFactor: 1.5,),
          ],
        ),
      ),
    );
  }
}
