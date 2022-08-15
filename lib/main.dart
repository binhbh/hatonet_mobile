
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'app/view/home/spalsh_screen/hello.dart';
import 'package:firebase_core/firebase_core.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hatonet',
      theme: new ThemeData(
        scaffoldBackgroundColor: Color(0xFFE65C00),
      ),
      home: HelloPage(),
      // home: OnBoarding(),
    );
  }
}
