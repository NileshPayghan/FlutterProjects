import 'package:flutter/material.dart';



class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> drawer_list = ["Home Page", "Python", "Python Internals", "Machine Learning", "Artificial Intelligence", "Projects", "About"];
  List<IconData> drawer_icons = [Icons.home, Icons.subject, Icons.subway, Icons.label_important, Icons.label_important, Icons.priority_high, Icons.album];


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        
      appBar: AppBar(
        title: Text("PyHandBook"),
        
      ),


      //create Navigation Drawer 
      drawer: Drawer(
        //child which contains list view for getting view in listed form
        child: ListView(
         children: <Widget>[
           //AppName with their version or Image or username
           DrawerHeader(
             child: Center(
                child: Text(
                  "PyHandyBook",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                  ),
               ),
             padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
             decoration: BoxDecoration(
               color: Colors.blue[200],
             ),
            ),
            // Divider between the lists
            // Divider(
            //   color: Colors.black,
            //   height: 10,
            //   thickness: 1,
            //   indent: 0,
            //   endIndent: 0,
            // ),

            ListTile(
              leading: Icon(drawer_icons[0]),
              title: Text(
                drawer_list[0],
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
              ),
            ),

            Divider(
              color: Colors.black,
              height: 10,
              thickness: 1,
              indent: 0,
              endIndent: 0,
            ),



         ], 
        ),
      ),


      //body which contains content of Home Page.
      body: Container(
          //alignment: ,
          child: Text("This is Home Page"),
          //clipBehavior: ,
          //color: Colors.blue,//background for container
          //constraints: ,
          //decoration: ,
          //foregroundDecoration: ,
          //margin: ,
          padding: EdgeInsets.all(20.0),
          //transform: ,

        ),
      ),
    );
  }
}

