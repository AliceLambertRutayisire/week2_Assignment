import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // The AppBar is the top bar of the app, it contains the title of the app
        appBar: AppBar(
          backgroundColor: Colors.orange, // sets the background color of the app bar to orange
          title: Text(
              "Group assignment"), // sets the title of the app bar to "Group assignment"
        ),
        // The body of the app is contained within a Container widget
        body: Container(
          color: Colors.yellow[
              200], // sets the background color of the container to light yellow
          child: Padding(
            // The child of the container is a Padding widget, which adds padding around its child
            padding:
                EdgeInsets.all(20), // adds 20 pixels of padding on all sides
            child: Column(
              children: <Widget>[
                // The child of the Padding widget is a Column widget, which lays out its children vertically
                Text(
                    "welcome to Group 9s assignment!"), // displays the text "welcome to Group 9s assignment!"
                SizedBox(
                    height:
                        20), // adds a space of 20 pixels between the two Text widgets
                Text(
                    "this is the answer to the first question"), // displays the text "this is the answer to the first question"
              ],
            ),
          ),
        ),
        // floating action button is a button that appears on the screen, it is usually used for a promoted action
        floatingActionButton: FloatingActionButton(
          onPressed:
              () {}, // this function will be called when the button is pressed, it is empty in this example
          child: Text("Click"), // displays the text "Click" on the button
        ),
      ),
    );
  }
}
