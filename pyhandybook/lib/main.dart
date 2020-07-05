import 'package:flutter/material.dart';

//Custom
import 'package:pyhandybook/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //theme: ThemeData.dark(),
      home: HomePage(),
      initialRoute: '/home_page',
    );
  }
}

