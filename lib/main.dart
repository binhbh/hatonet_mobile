
import 'package:flutter/material.dart';
import 'package:hatonet_mobile/app/view/home/bottom/bottom_bar.dart';
import 'package:hatonet_mobile/app/view/home/job/job_page.dart';
import 'package:hatonet_mobile/app/view/home/list_job_page/detail_job.dart';
import 'package:hatonet_mobile/app/view/home/list_job_page/list_job_page.dart';


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
       home: DetailJobPage(),
      // home: OnBoarding(),
       //home: DetailJobPage(),
    );
  }
}
