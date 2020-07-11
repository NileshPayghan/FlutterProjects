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
                background: Image.network("https://i.pinimg.com/originals/79/27/f9/7927f976b17065d627f94c0e125ac79c.jpg",
                fit: BoxFit.cover,),
                title: MyHeader(),//Header which display image and text 
                centerTitle: true,
              ),
              actions: <Widget>[
                IconButton(icon: Icon(Icons.search), onPressed: (){},),
              ],
            ),
            SliverFixedExtentList(
              itemExtent: 50.0,
              delegate: SliverChildListDelegate(
                [
                  listItem("SafeArea Widget", context),
                  // Divider(
                  //   height: 0,
                  //   //thickness: 0.2,
                  //   color: Theme.of(context).primaryColor,
                  // ),
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
    );
  }

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

  Widget MyHeader() => Container(
    color: Theme.of(context).primaryColor,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Text("This is header"),
      ],

    ),
  );


}