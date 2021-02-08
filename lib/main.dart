import 'package:flutter/material.dart';
// import class from other file
import './randomWords.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme for whole Material App
      theme: ThemeData(primaryColor: Colors.purple[900]),
      // randomWords defined in other file - import at top
      home: RandomWords()
    );
  }
}
