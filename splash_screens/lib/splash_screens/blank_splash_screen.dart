import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:splash_screens/landing_page.dart';
import 'package:google_fonts/google_fonts.dart';


class SplanScreenWithText extends StatefulWidget {
  @override
  _SplanScreenWithTextState createState() => _SplanScreenWithTextState();
}

class _SplanScreenWithTextState extends State<SplanScreenWithText> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 10,
      navigateAfterSeconds: LandingPage(),
      title: Text("Welcome to splash screen",
          style: GoogleFonts.lato(),
       ),
      backgroundColor: Colors.red,
      loadingText: Text("App is starting please wait for moment..."),
    );
  }
}



