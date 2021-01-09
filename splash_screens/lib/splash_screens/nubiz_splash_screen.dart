import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:splash_screens/landing_page.dart';
import 'package:google_fonts/google_fonts.dart';


class NubizSplashScreen1 extends StatefulWidget {
  @override
  _NubizSplashScreen1State createState() => _NubizSplashScreen1State();
}

class _NubizSplashScreen1State extends State<NubizSplashScreen1> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      backgroundColor: Colors.deepOrange,
      image: Image.asset("assets/images/nubiz-logo.png"),
      loadingText: Text("Wait for moment..."),
      seconds: 3,
      title: Text("Nubiz Solutions Pvt. Ltd",
      // https://pub.dev/documentation/google_fonts/latest/google_fonts/GoogleFonts-class.html
      style: GoogleFonts.lato(
        fontSize: 15,
        color: Colors.white,
      ),    
      ),
      navigateAfterSeconds: LandingPage(),
    );
  }
}