import 'package:flutter/material.dart';  ///importing material package
  
void main() => runApp(MyApp());  //main function
  
class MyApp extends StatelessWidget {  
  // This widget is the root of your application.  
  @override  
  Widget build(BuildContext context) {  ///Describes the part of the user interface represented by this widget.
    return MaterialApp(  
      theme: ThemeData(  
        primarySwatch: Colors.blueGrey,  
      ),  
      home: MyIconPage(),  ///class with the body
    );  
  }  
}  
  
class MyIconPage extends StatefulWidget {  
  @override  
  _MyIconPageState createState() => _MyIconPageState();  ///creating state because the class inherited a statefulwidget
}  
  
class _MyIconPageState extends State<MyIconPage> {  ///created state in class containing page with icons in the app body
  @override  
  Widget build(BuildContext context) {  
    return Scaffold(  
      appBar: AppBar(  ///implementing the basic visual layout structure of the home page appbar
        title: Text('Flutter Icon Trial'),  ///app bar title
      ),  
      body: Row(  ///row class with alignement of the icons
        mainAxisAlignment: MainAxisAlignment.spaceBetween,  ///aligning icons with space between each othem
        crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[  ///containing more than one icon
            Icon(Icons.social_distance),  //icon 1
            Icon(Icons.golf_course),  ///icon 2
            Icon(Icons.camera_front),  ///icon_3
      ]),  
    );  
  }  
}  