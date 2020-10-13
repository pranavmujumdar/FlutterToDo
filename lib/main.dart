import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of the To-Do application.
  String title = "To Do";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: title,
        theme: ThemeData(
            accentColor: Colors.blueAccent,
            primarySwatch: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity),
        home: ToDoHomePage(title: title));
  }
}

class ToDoHomePage extends StatefulWidget {
  ToDoHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _ToDoHomePageState createState() => _ToDoHomePageState();
}

class _ToDoHomePageState extends State<ToDoHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(widget.title),
        ),
      ),
    );
  }
}
