import 'package:flutter/material.dart';

void main() {
  // This is the main entry point of the app.
  // When the app starts, this function is called and it runs the MyApp widget.
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() =>
      _MyAppState(); // create a state object for this widget
}

class _MyAppState extends State<MyApp> {
  int _counter = 0; // initialize a counter variable

  void _incrementCounter() {
    // function to increment the counter
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        //Scaffold widget provides a basic layout structure
        appBar: AppBar(
          title: Text('Question 3'),
          //color: Color(0xffffe700),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                //SizedBox widget creates a box with a specific size
                height: 100,
                width: 100,
                child: Container(
                  color: Color(0xfff26b2d),
                ),
              ),
              Text("You have pressed the + button $_counter times"),
              SizedBox(
                height: 50,
              ),
              Container(
                // Container widget creates a rectangular area
                height: 100,
                width: 100,
                color: Color(0xffbe143e),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed:
              _incrementCounter, // when pressed, the onPressed function is called
          tooltip: 'Increment',
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
