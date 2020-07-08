import 'package:flutter/material.dart';

// Widget #1
//SafeArea -> Create the widgets that avoid operating system interfaces.
// https://api.flutter.dev/flutter/widgets/SafeArea-class.html
// https://api.flutter.dev/flutter/widgets/SafeArea/SafeArea.html

class SafeAreaWidget extends StatefulWidget {
  @override
  _SafeAreaWidgetState createState() => _SafeAreaWidgetState();
}

class _SafeAreaWidgetState extends State<SafeAreaWidget> {

  bool _isEnabled = true;//to change widget interface safearea dynmaically.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          top: _isEnabled,
          bottom: _isEnabled,
          right: _isEnabled,
          left: _isEnabled,
          
          //we need more than one widgets.
          child: Column(  //A widget 'Column' that displays it's children in vertical order.
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            //Widget will display in vertical order
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                color: Colors.blue,
                child: Text(
                  "This widget is present inside the SafeArea."
                  "if SafeArea is not applied then this content go behind the notch.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    ),
                ),
              ),
              
              Tooltip(
                message: "Raised Button",
                child: RaisedButton(
                  textColor: Colors.white,
                  color: Colors.indigo,
                  onPressed: () => setState( (){
                    _isEnabled == true ? _isEnabled = false: _isEnabled = true;
                  },),
                  child: Text(_isEnabled? "Disable SafeArea" : "Enable SafeArea"),
                ),
              ),

              Container(
                width: MediaQuery.of(context).size.width,
                color: Colors.blue,
                child: Text(
                  "This is present to take area at bottom, so RaisedButton make it in center. This is out of SafeArea.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    ),
                ),
              ),
            ],
          ),
        ),
    );
  }
}