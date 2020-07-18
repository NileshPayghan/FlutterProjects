import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Screen"),
      ),
      body: Center(
        child: Text("This is First Screen Widget go back to switch to screen"),
      ),
      floatingActionButton: RaisedButton(
        shape: CircleBorder(
          side: BorderSide(
            width: 2.0,
          )
          ),
        onPressed: () => Navigator.pushNamed(context, '/second_screen'),
      ),
    );
  }
}