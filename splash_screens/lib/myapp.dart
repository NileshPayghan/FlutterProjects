import 'package:flutter/material.dart';
import 'package:splash_screens/info.dart';
import 'package:splash_screens/home_page.dart';

//splash screens
import 'package:splash_screens/splash_screens/nubiz_splash_screen.dart';
import 'package:splash_screens/splash_screens/animated_text.dart';
import 'package:splash_screens/splash_screens/animated_text_type_writer.dart';


//Database screens
import 'package:splash_screens/database_screens/pie_chart_offline_1.dart';


class StartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: ThemeData.dark(),
      // centerTitle: true,
      title: Titles.appName,
      //initialRoute: '/',
      // home: MyApp(),   
      routes: <String, WidgetBuilder> {
        Routes.startPage: (BuildContext context) => MainPageList(),//This is starter of app

        //splash routes
        Routes.animatedTextTypeWriter: (BuildContext context) => AnimatedTextTypeWriter(),
        Routes.nubizSplashScreen1: (BuildContext context) => NubizSplashScreen1(),
        Routes.animatedTextScreen1: (BuildContext context) => AnimatedTextSplashScreen(),

        //Database routes
        Routes.pieChartOfflineData: (BuildContext context) => PieChartOffline(),
      },);
  }
}