import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Curved Bottom Navigation',
      home: MyHomePage(title: 'Flutter curved bottom navigation'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Application bar title and background. and textstyle
      appBar: AppBar(
        
        backgroundColor: Colors.white,
        title: Text(widget.title, style: TextStyle(
          color: Colors.black
        ),),
      ),

      //Navigatin app bar icons list here
      //https://pub.dev/packages/curved_navigation_bar //refer the link for more detail
      bottomNavigationBar: CurvedNavigationBar(
        index: 0,
        color: Colors.white,
        backgroundColor: Colors.deepOrange,
        buttonBackgroundColor: Colors.white,
        height: 50,
        animationDuration: Duration(
          milliseconds: 150,
        ),//by default is 600ms
        animationCurve: Curves.bounceInOut,//default is Curves.easeOutCubic
        items: <Widget>[
          Icon(Icons.home, size: 30,),
          Icon(Icons.search, size: 30,),
          Icon(Icons.add, size: 30,),
          Icon(Icons.favorite, size: 30,),
          Icon(Icons.verified_user, size: 30,),
        ],
        onTap: (index){
          debugPrint("Current index is $index");
        },
        ),
      
      //What body contains within app
      body: Container(
        color: Colors.deepOrange,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'This is just demo app',
              style: TextStyle(
                color: Colors.white
              )
            )
          ]
        ),
      ),
      );
  }
}
