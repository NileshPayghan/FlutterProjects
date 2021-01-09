import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

//custom defined packages
import 'package:widget_of_week/widgets_screens/safe_area.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(

          slivers: <Widget>[
            SliverAppBar(
              expandedHeight: 250.0,
              pinned: true,
              floating: true,
              backgroundColor: Theme.of(context).primaryColor,
              
              flexibleSpace: FlexibleSpaceBar(
                  //collapseMode: CollapseMode.parallax,
                  background: Image.network("https://i.pinimg.com/originals/79/27/f9/7927f976b17065d627f94c0e125ac79c.jpg",
                    fit: BoxFit.cover,
                    ),
                  title: MyHeader(),//Header which display image and text 
                  centerTitle: true,
              ),
              
              actions: <Widget>[
                IconButton(
                  icon: Icon(Icons.search),
                  onPressed: (){},
                ),
              ],
            ),

            SliverFixedExtentList(
              itemExtent: 45.0,
              delegate: SliverChildListDelegate(
                [
                  RaisedButton(
                    child: listItem("SafeArea Widget", context),
                    onPressed: (){
                      Navigator.pushNamed(context, '/safe_area');
                    }
                    ),
                  
                  // Divider(
                  //   height: 0,
                  //   //thickness: 0.2,
                  //   color: Theme.of(context).primaryColor,
                  // ),
                  //Padding(padding: EdgeInsets.all(5.0),),
                  listItem("List item 2", context),
                  listItem("List item 3", context),
                  listItem("List item 4", context),
                  listItem("List item 5", context),
                  listItem("List item 6", context),
                  listItem("List item 1", context),
                  listItem("List item 1", context),
                  listItem("List item 1", context),
                  listItem("List item 1", context),
                  listItem("List item 1", context),
                  listItem("List item 1", context),
                  listItem("List item 1", context),
                  listItem("List item 1", context),
                  listItem("List item 1", context),
                  listItem("List item 1", context),
                  listItem("List item 1", context),
                  listItem("List item 1", context),
                  listItem("List item 1", context),
                  listItem("List item 1", context),
                  listItem("List item 1", context),
                  listItem("List item 1", context),
                  listItem("List item 1", context),
                ],
              ), 
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: Text("About"),
        tooltip: "Extended Floating Action Button",
        // autofocus: true,
        backgroundColor: Theme.of(context).backgroundColor,
        foregroundColor: Theme.of(context).accentColor,
        heroTag: Hero,
        onPressed: (){
            Navigator.pushNamed(context, '/about_widget');
        },
       ),
       floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }


  //Item for each context to Navigate from here
  Widget listItem(String title, BuildContext context) => Container(
    decoration: BoxDecoration(
      border: Border(
        top: BorderSide(
          color: Theme.of(context).backgroundColor,
          width: 1.0,
        ),
      ),
    ),
    child: Center(
      child: Text(
        "$title",
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Theme.of(context).backgroundColor,
          fontSize: 14.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );

  //SliverAppBar Header
  Widget MyHeader() => Container(
    //color: Theme.of(context).primaryColor, //Color behind the Text and circular Avatar
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Row(
          children: <Widget>[
            Padding(padding: EdgeInsets.fromLTRB(50, 10, 20.0, 20),),
            Text("This is header",),
            //padding between Text and circularAvatar
            Padding(padding: EdgeInsets.only(right: 10.0),),
            CircleAvatar(
              //child: Text("LX"),//Text on image
              backgroundColor: Theme.of(context).primaryColor,//If image not loaded shows background color
              backgroundImage: NetworkImage("https://avatars.sched.co/0/2f/7876803/avatar.jpg?5fb"),//Network image if not loaded default color is shown
            ),
          ],
        ),
      ],

    ),
  );


}
