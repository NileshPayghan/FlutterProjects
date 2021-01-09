import 'package:flutter/material.dart';
import 'dart:async';
import 'package:animated_text_kit/animated_text_kit.dart';

import 'package:splash_screens/landing_page.dart';

class AnimatedTextTypeWriter extends StatefulWidget {
  @override
  _AnimatedTextTypeWriterState createState() => _AnimatedTextTypeWriterState();
}

class _AnimatedTextTypeWriterState extends State<AnimatedTextTypeWriter> {

  startTime() async{
    var _duration = Duration(seconds:6);
    return Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => LandingPage(),
      )
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.deepOrange,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // Text("Splash Screen using Navigator and State of screen"),
                TypewriterAnimatedTextKit(text: ["Welcome", "To", "Nubiz"],
                  // totalRepeatCount: 1,
                  isRepeatingAnimation: false,
                  speed: Duration(milliseconds: 300),
                  // repeatForever: true,
                  textStyle: TextStyle(
                    fontSize: 30.0,
                    fontFamily: 'BungeeShade',
                    color: Colors.white
                  ),
                  textAlign: TextAlign.start,
                  alignment: AlignmentDirectional.topStart,
                  stopPauseOnTap: true,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}