import 'package:floating_search_bar/floating_search_bar.dart';
import 'package:flutter/material.dart';


//Custom
import 'package:pyhandybook/drawer.dart';
import 'package:pyhandybook/home_page_body.dart';



class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: FloatingSearchBar.builder(
        itemCount: 1,
        itemBuilder: (BuildContext context, int index){
          return Container(
            child: HomePageBody(),//Home Page displayed at start
          );
        },
        trailing: CircleAvatar(
          child: Text("NP"),//or image or text
        ),
        //create Navigation Drawer 
        drawer: DrawerWidget(),
        decoration: InputDecoration.collapsed(
            hintText: "Search in pyhandbook"
          ),
        onChanged: (String value){
        },
        //When we tap into the search 
        onTap: (){
          
        },

        //body which contains content of Home Page.
        //body: HomePageBody(),
      ),
    );
  }
}

