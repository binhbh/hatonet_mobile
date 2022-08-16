// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'indicator.dart';
import 'optimal_page.dart';

class IntroPage extends StatefulWidget {


  IntroPage({Key? key,}) : super(key: key);

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        color: Colors.white,
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(right: 10),
                child: Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Text(
                        'Bỏ qua',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 22),
                      ),
                    ),
                    SizedBox(
                      height:20
                    ),
                    // Padding(
                    //   padding: EdgeInsets.only(left: 30, right: 30),
                    //   child: SvgPicture.asset('assets/icons/ic_fastboy.svg'),
                    // ),
                    SizedBox(
                      height: 50,
                    ),
                    Text(
                      'TỐC ĐỘ',
                      style: TextStyle(
                          fontSize: 28,
                          color: Color(0xFFFF6116),
                          fontWeight: FontWeight.w800),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            'assets/icons/ic_circle.svg',
                            height: 5,
                            width: 5,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Tối ưu thời gian tuyển dụng',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            'assets/icons/ic_circle.svg',
                            height: 5,
                            width: 5,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Kết nối 1.000 Doanh nghiệp IT',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 25),
                      child: Row(
                        children: [
                          Text(''),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'cung ứng & tuyển dụng trên toàn quốc',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 25),
                      child: Row(
                        children: [
                          Text(''),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'toàn quốc',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            'assets/icons/ic_circle.svg',
                            height: 5,
                            width: 5,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Thao tác đơn giản.',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            'assets/icons/ic_circle.svg',
                            height: 5,
                            width: 5,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Tận dụng nguồn lực của nhiều ',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 25),
                      child: Row(
                        children: [
                          Text(''),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'doanh nghiệp CNTT.',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                    //
                    //  SizedBox(height: 50,),
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // ...List.generate(length, (index) => Indicator())
                        Indicator(),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => OptimalPage()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: Color(0xFFFF6116),
                              borderRadius: BorderRadius.circular(4)),
                          height: 48,
                          width: 350,
                          child: Center(
                            child: Text(
                              'Tiếp tục',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
