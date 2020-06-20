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
        //list of widgets that we want to shown in sidebar
        children: <Widget>[
          Container(
            width: double.infinity,
            height: 200,
            color: Colors.grey.withAlpha(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,

              //header of the drawer
              children: <Widget>[
                Image.asset(
                  "assets/profile.jpg",
                  width: 100,
                  height: 100,
                ),
                SizedBox(
                  height: 10,
                ),
                Text("npsoft technologies")
              ],
            )),
            
           //body of the drawer
          //Profile page
          ListTile(
            onTap: (){
              //where to go define here
              debugPrint("Tapped Profile");
            },
            leading: Icon(Icons.person),
            title: Text("Your Profile",),
          ),

          //Just divider between two
          Divider(
              height: 1,
              color: Colors.grey,
          ),

        //settings navigation in drawer
        ListTile(
          onTap: (){
            debugPrint("Tapped Settings");
          },
          leading: Icon(Icons.settings),
          title: Text("settings"),
        ),

        Divider(
          height: 1,
          color: Colors.grey,
        ),

        //notifications 
        ListTile(
          onTap: (){
            debugPrint("Tapped Notifications");
          },
          leading: Icon(Icons.notifications),
          title: Text("Notifications"),
        ),
        Divider(
          height: 1,
          color: Colors.grey,
        ),

        //logout
        ListTile(
          onTap: (){
            debugPrint("Tapped Log out");
          },
          leading: Icon(Icons.exit_to_app),
          title: Text("Log out"),
        ),
        Divider(
          height: 1,
          color: Colors.grey,
        ),

        ],
      ),

    );
  }
}