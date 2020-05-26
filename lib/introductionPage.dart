import 'package:flutter/material.dart';

class IntroductionPage extends StatefulWidget {
 
  @override
  _IntroductionPageState createState() => _IntroductionPageState();
}

class _IntroductionPageState extends State<IntroductionPage> {
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
        child: Image.asset("assets/logo_short.png",width: 200,)
      ),
      floatingActionButton: FlatButton(
        child: Text("Next Page"),
        onPressed: () {
          Navigator.pushReplacementNamed(context, "/home");
        },
      ),
    );
  }
}
