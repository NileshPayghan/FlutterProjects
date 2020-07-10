import 'package:flutter/material.dart';


class AboutWidget extends StatefulWidget {
  @override
  _AboutWidgetState createState() => _AboutWidgetState();
}

class _AboutWidgetState extends State<AboutWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("This is about page."),
    );
  }
}