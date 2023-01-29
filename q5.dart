import 'package:flutter/material.dart';

void main() {runApp(MyApp()); ///predefined main function to run the application
}
// Class 1
// Extending StatelessWidget class
class MyApp extends StatelessWidget {
// This widget is
//the root of your application.
@override
Widget build(BuildContext context) {///Describes the part of the user interface represented by this widget.
	return MaterialApp(
	title: 'RotatedBoxDemo',///title of the app
	theme: ThemeData(
		primarySwatch: Colors.blue,
	),
	home: MyHomePAGE(),///class with the body
	debugShowCheckedModeBanner: false,
	);
}
}

// Class 2
// Extending StatelessWidget class
class MyHomePAGE extends StatelessWidget {
@override
Widget build(BuildContext context) {
	return Scaffold(
	appBar: AppBar(///implementing the basic visual layout structure of the home page appbar
		title: Text('Rotated Box Trial'),//app bar title
		backgroundColor: Colors.blueGrey,///app bar background color 
	),
	body: Center(//app body containing rotated box class at the center 
		child: RotatedBox(///rotated box child class 
			quarterTurns: 3,///specifies the times the image is going to turn before its final position
			child: Image.network('https://cdn.pixabay.com/photo/2015/04/19/08/32/marguerite-729510__340.jpg')//child widget containing image from the internet
		)
	),
	backgroundColor: Colors.lightBlue[50],
	);
}
}
