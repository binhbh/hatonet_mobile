// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'indicator.dart';

class TrustPage extends StatefulWidget {
  const TrustPage({Key? key}) : super(key: key);

  @override
  State<TrustPage> createState() => _TrustPageState();
}

class _TrustPageState extends State<TrustPage> {
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
                    Padding(
                      padding: EdgeInsets.only(left: 30, right: 30),
                      child: SvgPicture.asset('assets/icons/ic_trust.svg'),
                    ),
                    Text(
                      'TIN CẬY',
                      style: TextStyle(
                          fontSize: 24,
                          color: Color(0xFFFF6116),
                          fontWeight: FontWeight.w800),
                    ),
                    SizedBox(
                      height: 30,
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
                            'Mức phí tối ưu nhât trên thị',
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
                            'trường.',
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
                            'Hệ thống CMS được cập nhật',
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
                            'và phát triển liên tục.',
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
                            'Luôn phát triển và đồng',
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
                            'hành cùng doanh nghiệp ',
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
                            'CNTT Việt Nam.',
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
