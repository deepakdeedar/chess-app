import 'package:flutter/material.dart';
import 'package:play_chess/start.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: Start(),
      debugShowCheckedModeBanner: false,
    );
  }
}
