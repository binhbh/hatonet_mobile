
import 'package:flutter/material.dart';
import 'package:hatonet_mobile/app/view/home/bottom/bottom_bar.dart';


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
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFE65C00),
      ),
       home: BottomBarPage(),
      // home: OnBoarding(),
       //home: DetailJobPage(),
    );
  }
}
