import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:small_app/home.dart';

void main()
{
  runApp(Small());
}
class Small extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("SMALLER"),
        ),
        body: Home(),
      ),


    );
  }
}
