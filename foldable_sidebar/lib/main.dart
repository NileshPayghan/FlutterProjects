import 'package:flutter/material.dart';
import 'package:foldable_sidebar/foldable_sidebar.dart';
// import 'package:foldable_sidebar/foldable_sidebar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Foldable Drawer',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  FSBStatus fsbStatus;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //write side in body properties
        body: FoldableSidebarBuilder(
          drawerBackgroundColor: Colors.deepOrange,
          status: fsbStatus,
          drawer: CustomDrawer(
            closeDrawer: (){
              setState(() {
                fsbStatus = FSBStatus.FSB_CLOSE;
              });
          },),
          screenContents: FirstScreen(),
        ),

        floatingActionButton: FloatingActionButton(
        //on pressed the Navigation foldable drawer
          onPressed: (){
          setState(() {
            fsbStatus = fsbStatus == FSBStatus.FSB_OPEN ? FSBStatus.FSB_CLOSE : FSBStatus.FSB_OPEN;
          });
        },
        backgroundColor: Colors.blue,
        tooltip: 'Drawer',
      ),
      ),
    );
  }
}

//This is screen shown in with drawer button
class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black.withAlpha(200),
      child: Center(
        child: Text("Click on FAB to open Drawer", style: TextStyle(fontSize: 20),),
      ),
    );
  }
}

//Drawer widget returned
class CustomDrawer extends StatelessWidget {
  final Function closeDrawer;

  const CustomDrawer({Key key, this.closeDrawer}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    MediaQueryData mediaQueryData = MediaQuery.of(context);

    return Container(
      color: Colors.white,
      width: mediaQueryData.size.width * 0.60,
      height: mediaQueryData.size.height,
      child: Column(
        children: <Widget>[
          Container(
            width: ,
            height: ,
            color: ,
            child: ,
            
          )
        ],
      ),

    );
  }
}