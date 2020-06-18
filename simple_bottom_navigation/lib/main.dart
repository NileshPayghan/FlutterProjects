import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Simple Bottom Navigation Bar',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Simple Bottom Navigation Bar'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  //Extra function to show text in body when on Tap
  int _selectedIndex = 0;//Default selective index for Bottom Navigation bar.

  //Define content in widget for body child to show text on screen for selectedIndex bar
  static const List<Widget> _widgetOptions = <Widget>[
    Text('Index 0: Home Selected. this default window selected.',
    style: optionStyle,
    ),
    Text('Index 1: Search, This window shows the search results',
    style: optionStyle,
    ),
    Text('Index 2: Favorite, This windows the favirote ones or liked ones.',
    style: optionStyle,
    ),
    Text('Index 3: Profile, This shown verified user profile of the user.',
    style: optionStyle,
    ),
  ];

  //unique font style to apply on text
  static const TextStyle optionStyle = TextStyle(
    fontSize: 30, 
    fontWeight: FontWeight.bold,
  );

  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Title shown in application bar remove it if don't want it. comment out appBar
      appBar: AppBar(
        title: Text(widget.title),
      ),
    
    //Body items start from center user differnt options for requirements
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),//shows the text on screen when bottom navigation bar is selected
      ),

      //Simple Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text('Search'),
            backgroundColor: Colors.blue,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              title: Text('Favorite'),
              backgroundColor: Colors.blue,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.verified_user),
              title: Text('Profile'),
              backgroundColor: Colors.blue,//Or profile image insertion 
              ),
        ],
        currentIndex: _selectedIndex,//start at given position
        selectedItemColor: Colors.orangeAccent,
        onTap: _onItemTapped,

      ),


    );
  }
}
