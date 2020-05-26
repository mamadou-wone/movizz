import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
 
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color color = Colors.black;
  void onLongPress(){
   color = Colors.deepOrange;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Movizz"),
      ),
      body: Center(
        child: Icon(Icons.access_time)
      )
    );
  }
}
