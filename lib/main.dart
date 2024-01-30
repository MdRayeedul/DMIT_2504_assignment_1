// ignore_for_file: use_key_in_widget_constructors, todo

import 'package:flutter/material.dart';

//https://medium.com/flutter-community/flutter-layout-cheat-sheet-5363348d037e

//This app makes use of the Row, Column,
//Expanded, Padding, Transform, Container,
//BoxDecoration, BoxShape, Colors,
//Border, Center, Align, Alignment,
//EdgeInsets, Text, and TextStyle Widgets
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //first level widget of Material Design
      home: Scaffold(
        //default route
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: const Text("App1 - UI Layout"),
          backgroundColor: Colors.blue,
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            //TODO: Put your code here to complete this app.
          
          Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.yellow,
                    border: Border.all(width: 3),
                  ),
                  child: Text('Container 1'),
                ),
                Transform.rotate(
                  angle: -0.785398, // 45 degrees in radians
                  child: Container(
                    height: 100,
                    width: 100,
                    padding: EdgeInsets.all(10),
                    color: Colors.white,
                    child: Text('Container 2'),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(10),
                      color: Colors.yellow,
                      child: Text('Container 3'),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(10),
                      color: Colors.blue,
                      child: Text('Container 4'),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  // This is Container 5
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.black,
                  ),
                  child: Center(
                    child: Text(
                      'Container 5',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Container(
                  // This is Con 6
                  height: 300,
                  width: 100,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    border: Border.all(width: 3),
                  ),
                  child: Text(
                    'Con 6',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ],
            )
        
            
          ],
        ),
      ),
    );
  }
}
