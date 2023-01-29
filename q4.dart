import 'package:flutter/material.dart';

void main() => runApp(const MyApp());///predefined main function to run the application

class MyApp extends StatelessWidget {///myApp class inheriting a stateless widget
  const MyApp({super.key});//super keyword to show myApp as the parent class

  static const String _title = 'Fitted Box Trial';///declaring a constant string title of the app 

  @override
  Widget build(BuildContext context) {///Describes the part of the user interface represented by this widget.
    return MaterialApp(//return different widget as aspects of the application
      title: _title,///calling the declared static constant as the title
      home: Scaffold( ///implementing the basic visual layout structure of the home page appbar
        appBar: AppBar(title: const Text(_title),
        backgroundColor: Colors.blueGrey,),
        body: const Center(///body of the app
          child: MyStatelessWidget(),///the child class
        ),
      ),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {///creating child class
  const MyStatelessWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(///returns the child class body container containing another class in it 
      height: 400,//specifies height
      width: 400, ///specifies width
      color: Colors.red,///specifies color of the child widget
      child: FittedBox(///fitted box class containing image
        fit: BoxFit.fill,///sets the image to fit within the fitted box
        child: Image.network('https://comicbookmovie.com/images/articles/banners/198131.jpg'),///image class with an image from a url address
      ),
    );
  }
}
