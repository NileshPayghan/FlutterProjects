import 'package:flutter/material.dart';
import 'package:widget_of_week/myapp.dart';
import 'package:widget_of_week/about_widget.dart';
import 'package:widget_of_week/widgets_screens/safe_area.dart';


void main() {
  runApp(StartScreen());
}


class StartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      //initialRoute: '/',
      // home: MyApp(),   
      routes: <String, WidgetBuilder> {
        '/': (BuildContext context) => MyApp(),
        '/safe_area': (BuildContext context) => SafeAreaWidget(),
        '/about_widget': (BuildContext context) => AboutWidget(),
      },);
  }
}

