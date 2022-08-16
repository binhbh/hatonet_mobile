// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hatonet_mobile/app/view/home/intro/trust_page.dart';

import 'indicator.dart';

class OptimalPage extends StatefulWidget {


  OptimalPage({Key? key,}) : super(key: key);

  @override
  State<OptimalPage> createState() => _OptimalPageState();
}

class _OptimalPageState extends State<OptimalPage> {
  @override
  Widget build(BuildContext context) {
    final bool isActive;
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
                    //   child: SvgPicture.asset('assets/icons/ic_oclock.svg'),
                    // ),
                    SizedBox(
                      height: 50,
                    ),
                    Text(
                      'TỐI ƯU',
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
                            'Tối ưu được chi phí cơ hội',
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
                            'khi có nhu cầu lớn về nhân',
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
                            'sự onsite.',
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
                            'Hỗ trợ kết nối thông qua hệ',
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
                            'sinh thái của Hatonet đến',
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
                            'các doanh nghiệp CNTT',
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
                            'trên toàn quốc.',
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
                      child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => TrustPage()));
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
                                  fontSize: 24,
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
