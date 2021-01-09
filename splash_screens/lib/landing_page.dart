import 'package:flutter/material.dart';


class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("App Home Page"),
            centerTitle: true,
          ),

          body: Center(
            child: Text("Put Your Starting page of app here",
                      style: TextStyle(
                        fontSize: 40, 
                        color: Colors.green[600], 
                        fontWeight: FontWeight.bold, 
                        fontFamily: 'PermanentMarker'
                      ),
            ),
          ),
        ),
    );
  }
}