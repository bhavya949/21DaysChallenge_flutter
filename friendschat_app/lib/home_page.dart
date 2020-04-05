import 'package:flutter/material.dart';
import 'package:friendschatapp/chat_screen.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Frenzy App"),
      ),
      body: new ChatScreen(),
    );
  }
}


