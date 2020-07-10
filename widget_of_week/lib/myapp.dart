
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

//custom defined packages
import 'package:widget_of_week/widgets_screens/safe_area.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("This is home"),
    );
  }
}