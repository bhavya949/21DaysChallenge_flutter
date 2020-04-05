import 'package:flutter/material.dart';
import 'package:friendschatapp/home_page.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Chat App',
      home: new HomePage()
    );
  }
}

