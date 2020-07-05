import 'package:flutter/material.dart';
import 'package:floating_search_bar/floating_search_bar.dart';
import 'package:animated_text_kit/animated_text_kit.dart';


class DrawerWidget extends StatefulWidget {
  @override
  _DrawerWidgetState createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  List<String> drawer_list = ["Home Page", "Python", "Python Internals", "Machine Learning", "Artificial Intelligence", "Projects", "About"];
  List<IconData> drawer_icons = [Icons.home, Icons.subject, Icons.subway, Icons.label_important, Icons.label_important, Icons.priority_high, Icons.album];

  @override
  Widget build(BuildContext context) {
    return Drawer(
        //child which contains list view for getting view in listed form
        child: ListView(
          padding: EdgeInsets.zero,
         children: <Widget>[
           
           ListTile(
             title: TypewriterAnimatedTextKit(
                    //totalRepeatCount: 2,
                    repeatForever: true,
                    pause: Duration(milliseconds: 1500),
                    text: ["PyHandyBook","Python Concepts", "Python Internals", "Artificial Intelligence", "Machine Learning"],
                    textStyle: TextStyle(
                      color: Colors.blue,
                      fontSize: 20,
                    ),
                    stopPauseOnTap: true,
                  ),
           ),
           Divider(
              color: Colors.black,
              height: 1,
              thickness: 0.1,
              indent: 0,
              endIndent: 0,
            ),

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

            
         ], 
        ),
      );
  }
}