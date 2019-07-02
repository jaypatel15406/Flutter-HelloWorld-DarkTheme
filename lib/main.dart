import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "My App",
        home: new HomePage(),
        theme: new ThemeData(
          primarySwatch: Colors.green,
          brightness: Brightness.dark,
          accentColor: Colors.red,
        ));
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String mytext = "Hello World";

  void _changeText() {
    setState(() {
      if (mytext.startsWith("H")) {
        mytext = "Welcome To My App";
      } else {
        mytext = "Hello World";
      }
    });
  }

  Widget _bodywidget() {
    return new Container(
      padding: const EdgeInsets.all(8.0),
      child: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              mytext,
              style: new TextStyle(fontSize: 38.0, fontStyle: FontStyle.italic),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(
          "My First Flutter App",
        ),
        backgroundColor: Colors.black87,
        titleSpacing: 92,
        actions: <Widget>[
          Icon(
            Icons.android,
            color: Colors.lightGreenAccent[400],
            size: 50,
          )
        ],
      ),
      body: _bodywidget(),
      floatingActionButton: new FloatingActionButton(
        child: Icon(
          Icons.thumb_up,
        ),
        backgroundColor: Colors.blue[900],
        onPressed: _changeText,
        elevation: 10,
      ),
    );
  }
}
