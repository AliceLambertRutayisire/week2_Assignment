import 'package:flutter/material.dart';

void main() {
  // This is the main entry point of the app.
  // When the app starts, this function is called and it runs the MyApp widget.
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This variable keeps track of how many times the + button has been pressed.
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    // This is where the app's layout is defined.
    return MaterialApp(
      title: "Flutter assignment",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        // AppBar is a built-in widget that goes at the top of the screen.
        appBar: AppBar(
          title: Text("Question 2"),
        ),
        body: ConstrainedBox(
          // ConstrainedBox is a built-in widget that allows you to set constraints on a child widget.
          // In this case, the child widget (Container) must have a minimum width and height of 50.
          constraints: BoxConstraints(minWidth: double.infinity, minHeight: 50),
          child: Container(
            color: Colors.lightBlue[100],
            child: Column(
              children: <Widget>[
                SizedBox(height: 20), // defining the size of the box
                Text("This is a constrained box "),
                Text("You have pressed the + button $_count times"),
              ],
            ),
          ),
        ),
        // FloatingActionButton is a built-in widget that is typically used for a primary action in the app.
        // When pressed, it calls the onPressed callback.
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              _count++; // setting the counter as the state of the widget
            });
          },
          child: Icon(Icons
              .add), // each time the icon is clicked, a number in the body where the counter is set will increment
        ),
      ),
    );
  }
}
