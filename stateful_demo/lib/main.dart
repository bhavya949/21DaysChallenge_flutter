import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "MyApp",
      home: new HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {

  String mytext ="Hello World";
  void _changeText(){
    setState(() {
      if(mytext.startsWith("H")){
        mytext="Welcome to my app";
      }else {
        mytext = "Hello World";
      }
    });

  }

  Widget _bodyWidget(){
    return new Container(
      padding: const EdgeInsets.all(8.0),
      child: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(mytext,style: new TextStyle(
              color: Colors.blue,
              fontSize: 30.0
            ),),
            new RaisedButton(
              child: new Text("Click",style: new TextStyle(
                color: Colors.white,
              ),),
              onPressed: _changeText ,
              color: Colors.red,
            )
          ],
        ) ,
      ),
    );

  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Home Page"),
      ),
      body: _bodyWidget()
    );
  }
}

