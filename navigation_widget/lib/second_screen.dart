import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
      ),
      body: Center(
        child: Text("This is second screen click on below button to move to root screen"),
      ),
      floatingActionButton: RaisedButton(
        onPressed: (){
          Navigator.pop(context); // Navigator.pushNamed(context, '/first_screen');
          
        }
      ) ,
    );
  }
}