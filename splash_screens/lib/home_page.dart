import 'package:flutter/material.dart';
import 'package:splash_screens/info.dart';
// import 'package:webview_flutter/webview_flutter.dart';



class MainPageList extends StatefulWidget {
  @override
  _MainPageListState createState() => _MainPageListState();
}

class _MainPageListState extends State<MainPageList> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              pinned: true,
              elevation: 3.0,
              forceElevated: false,
              flexibleSpace: FlexibleSpaceBar(
                titlePadding: EdgeInsets.only(left:0.0, top:0.0, right:0.0, bottom:14.0),
                centerTitle: true,
                title: Row(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment : MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(right: 12.0, left: 8.0),
                      child: GestureDetector(
                        child: FlutterLogo(
                          textColor: Colors.white,
                          style: FlutterLogoStyle.markOnly,
                        ),
                        // Push to flutter website on browser https://flutter.io
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) {
                              return SafeArea(
                                child:  Container(
                                child: Text("Webview of Flutter site"),
                                )
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 0.0,
                    ),
                    Text(
                      Titles.appName,
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    SizedBox(
                      width: 0.0,
                    ),
                    GestureDetector(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10.0, right:8.0),
                      ),
                      onTap: () =>{
                        print("Show profile and create bottom sheet for it. to show social profiles")
                      },
                    ),
                  ],
                ),
              ),
              actions: [],
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                // list of widgets to be displayed here
                [
                  //context, route, NameOfRoute or App
                  //Simple Splash Screens
                  myCardOnSliverList(context, Routes.animatedTextTypeWriter, "Animated Text Typewriter"),
                  myCardOnSliverList(context, Routes.nubizSplashScreen1, "Nubiz Splash Screen"),
                  myCardOnSliverList(context, Routes.animatedTextScreen1, "Simple Text on Splash Screen"),
                  
                  //database screens
                  myCardOnSliverList(context, Routes.pieChartOfflineData, "Pie Chart for Daily Task"),
                ]
              ),
            ),
          ],
        ) ,
      ),

    );
  }
}


Widget myCardOnSliverList(BuildContext context, String route, String designName){
  return InkWell(
            onTap: () => Navigator.pushNamed(context,route), 
            child:Padding(
              padding: const EdgeInsets.all(8.0),
              child: Material(
                color: Colors.white70,
                elevation: 14.0,
                borderRadius: BorderRadius.circular(24.0),
                shadowColor: Color(0x802196F3),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: showDesignName(context, route, designName),
                ),
              ),
            ),
    // onTap: () => Navigator.pushNamed(context, Routes.nubizSplashScreen1)
  );
}

Center showDesignName(BuildContext context,String route, String designName){
  return Center(
    child: Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
             Container(
              height: 35.0,
              child: Text(designName,
                style: TextStyle(
                  color: Color(0xff3a2483),
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                ),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
