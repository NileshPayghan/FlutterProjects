import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: MySwitcher(),
    )
  );
}

class MySwitcher extends StatefulWidget {
  @override
  _MySwitcherState createState() => _MySwitcherState();
}

class _MySwitcherState extends State<MySwitcher> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Switch button"),
      ),
      body: Center(
        child: Switch(
          value: isSwitched,
          onChanged: (value){
            setState(() {
              isSwitched = value;
              print(isSwitched);
            });
          },
          activeColor: Colors.blue,
          activeTrackColor: Colors.blueAccent,
        ),
      ),
    );
  }
}