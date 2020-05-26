import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:movizz/HomePage.dart';
import 'package:movizz/introductionPage.dart';
import 'package:page_transition/page_transition.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized(); 
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then((_){
       runApp(MyApp());
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: "Roboto",
        primaryColor: Color(0XFFff1493),
      ),
     initialRoute: "/",
     onGenerateRoute: (settings) {
       switch (settings.name) {
         case "/":
           return PageTransition(child: IntroductionPage(), type: PageTransitionType.fade);
           break;
           case "/home":
           return PageTransition(child: HomePage(), type: PageTransitionType.fade);
           break;
         default:
         return null;
       }
     },
    );
  }
}

