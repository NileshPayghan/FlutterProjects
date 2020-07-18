import 'package:flutter/material.dart';

import 'package:navigation_widget/first_screen.dart';
import 'package:navigation_widget/second_screen.dart';

void main(){
  runApp( MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
    // title: "This is Material for Navigation routes.",
    initialRoute: '/',
    // home: NavigationApp(),
    routes:<String, WidgetBuilder> {
      '/': (BuildContext context) => NavigationApp(),
      '/first_screen': (BuildContext context) => FirstScreen(),
      '/second_screen': (BuildContext context) => SecondScreen(),
    },
    );
  }
}

class NavigationApp extends StatefulWidget {
  @override
  _NavigationAppState createState() => _NavigationAppState();
}

class _NavigationAppState extends State<NavigationApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
      child: Center(
        child: RaisedButton(
          child: Text("Switch Screen"),
          onPressed: (){
            Navigator.pushNamed(context, '/first_screen');
        }),
      ),
    ),
    );
  }
}