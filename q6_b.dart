import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) { ///Describes the part of the user interface represented by this widget.
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Icons',///title of the page
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: MyHomePage(), ///class with the body
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState(); ///creating state because the class inherited a statefulwidget
}

class _MyHomePageState extends State<MyHomePage> { ///created state in class containing page with icons in the app body
  @override
  Widget build(BuildContext context) {///Describes the part of the user interface represented by this widget.
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,///centers title
        title: Text("Font Awesome Icons Trial")///title
      ),
      body: Center(//body centered
        child: Column( ///arraned in a column
          mainAxisAlignment: MainAxisAlignment.center,
          children: [///contains grouped icons in sized boxes

            Text("Font Awesome in Flutter ",textAlign:TextAlign.center,style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),), ///title in the body
            SizedBox(height: 20,),//size box with the first group of icons
            //brand Icons
            Text("Brands",textAlign: TextAlign.start,style: TextStyle(fontWeight: FontWeight.normal,fontSize: 20),),//first group title
            Row(///icons arranged in row
              mainAxisAlignment: MainAxisAlignment.center,
              children: [///icons colored
                FaIcon(FontAwesomeIcons.googlePay,color: Colors.deepOrange,size: 35,),
                SizedBox(width: 15,),
                FaIcon(FontAwesomeIcons.facebook,color: Colors.blue,size: 35,),
                SizedBox(width: 15,),
                FaIcon(FontAwesomeIcons.github,color: Colors.black,size: 35,),
                SizedBox(width: 15,),
                FaIcon(FontAwesomeIcons.twitter,color: Colors.blueAccent,size: 35,),
                SizedBox(width: 15,),
                FaIcon(FontAwesomeIcons.aws,color: Colors.deepOrange,size: 35,),
                SizedBox(width: 15,),
                FaIcon(FontAwesomeIcons.pinterest,color: Colors.red,size: 35,),
                SizedBox(width: 15,),
                
              ],
            ),
            SizedBox(height: 25,),
            //Regular Icons
            Text("Regulars",textAlign: TextAlign.start,style: TextStyle(fontWeight: FontWeight.normal,fontSize: 20),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FaIcon(FontAwesomeIcons.smile,color: Colors.green,size: 35,),
                SizedBox(width: 15,),
                FaIcon(FontAwesomeIcons.laugh,color: Colors.blue,size: 35,),
                SizedBox(width: 15,),
                FaIcon(FontAwesomeIcons.dollarSign,color: Colors.green,size: 35,),
                SizedBox(width: 15,),
                FaIcon(FontAwesomeIcons.accessibleIcon,color: Colors.red,size: 35,),
                SizedBox(width: 15,),
                FaIcon(FontAwesomeIcons.iceCream,color: Colors.pink,size: 35,),
                SizedBox(width: 15,),
                FaIcon(FontAwesomeIcons.plane,color: Colors.brown,size: 35,),
                SizedBox(width: 15,),
                
              ],
            ),

            SizedBox(height: 25,),
            //Regular Icons
            Text("Solids",textAlign: TextAlign.start,style: TextStyle(fontWeight: FontWeight.normal,fontSize: 20),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FaIcon(FontAwesomeIcons.virus,color: Colors.yellow,size: 35,),
                SizedBox(width: 15,),
                FaIcon(FontAwesomeIcons.mask,color: Colors.blue,size: 35,),
                SizedBox(width: 15,),
                FaIcon(FontAwesomeIcons.dollarSign,color: Colors.green,size: 35,),
                SizedBox(width: 15,),
                FaIcon(FontAwesomeIcons.atom,color: Colors.red,size: 35,),
                SizedBox(width: 15,),
                FaIcon(FontAwesomeIcons.truckMonster,color: Colors.black,size: 35,),
                SizedBox(width: 15,),
                FaIcon(FontAwesomeIcons.bacteria,color: Colors.purple,size: 35,),
                SizedBox(width: 15,),
                
              ],
            ),
          ],
        ),
      ),
    );
  }
}