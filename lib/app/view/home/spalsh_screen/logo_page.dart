import 'dart:async';


import 'package:flutter/material.dart';

import '../intro/intro_page.dart';





class LogoPage extends StatefulWidget {
  const LogoPage({Key? key}) : super(key: key);

  @override
  State<LogoPage> createState() => _LogoPageState();
}

class _LogoPageState extends State<LogoPage> {

  @override
  void initState() {

    super.initState();
    Timer(Duration(seconds: 20),(){
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=>IntroPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(30),
            child: Image.asset('assets/images/logo hatonet-06 (2).png'),
          ),
          Spacer(),
          Container(
            child: Padding(
              padding: EdgeInsets.only(right: 5),
              child: Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    'Copyright © 2021 by Hatonet.com. All Rights Reserved.',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
            ),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
