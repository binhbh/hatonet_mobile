// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hatonet_mobile/app/view/home/dashboard/dashboard_page.dart';

class NavigationDrawerWidget extends StatelessWidget {
  NavigationDrawerWidget({Key? key}) : super(key: key);
  final padding = EdgeInsets.symmetric(horizontal: 20);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Color(0xFF1F1F1F),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Image.asset(
                'assets/images/logo hatonet-07 (2).png',
                height: 70,
                width: 220,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'TỔNG QUAN',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white.withOpacity(0.3),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> DashBoardPage()));
              },
              child: Padding(
                padding: EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Expanded(
                        flex: 1,
                        child: SvgPicture.asset(
                          'assets/icons/ic_grid_add.svg',
                          width: 24,
                          height: 24,
                          color: Colors.white.withOpacity(0.8),
                        )),
                    Expanded(
                      flex: 5,
                      child: Text(
                        'Dashboard',
                        style: TextStyle(
                            color: Colors.white.withOpacity(0.8),
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: SvgPicture.asset('assets/icons/ic_list.svg',
                        width: 24, height: 24,color: Colors.white.withOpacity(0.3),),
                  ),
                  Expanded(
                    flex: 5,
                    child: Text(
                      'Việc đang tuyển',
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.3),
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'QUẢN LÝ CÔNG VIỆC',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white.withOpacity(0.3),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: SvgPicture.asset('assets/icons/ic_assignment.svg',
                        width: 24, height: 24,color: Colors.white.withOpacity(0.3),),
                  ),
                  Expanded(
                    flex: 4,
                    child: Text(
                      'Quản lý việc làm',
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.3),
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: SvgPicture.asset(
                      'assets/icons/ic_expand.svg',
                      width: 24,
                      height: 24, color: Colors.white.withOpacity(0.3),
                    ),
                  ),
                ],
              ),

            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: SvgPicture.asset('assets/icons/ic_users.svg',
                        width: 24, height: 24,color: Colors.white.withOpacity(0.3),),
                  ),
                  Expanded(
                    flex: 4,
                    child: Text(
                      'Hồ sơ ứng viên',
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.3),
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: SvgPicture.asset(
                      'assets/icons/ic_expand.svg',
                      width: 24,
                      height: 24, color: Colors.white.withOpacity(0.3),
                    ),
                  ),
                ],
              ),

            ),
            SizedBox(height: 25,),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'CÀI ĐẶT',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white.withOpacity(0.3),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),

            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: SvgPicture.asset('assets/icons/ic_bell_z.svg',
                        width: 24, height: 24,color: Colors.white.withOpacity(0.3),),
                  ),
                  Expanded(
                    flex: 5,
                    child: Text(
                      'Thông báo',
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.3),
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: SvgPicture.asset('assets/icons/ic_package.svg',
                        width: 24, height: 24,color: Colors.white.withOpacity(0.3),),
                  ),
                  Expanded(
                    flex: 5,
                    child: Text(
                      'Gói dịch vụ',
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.3),
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: SvgPicture.asset('assets/icons/ic_users.svg',
                        width: 24, height: 24,color: Colors.white.withOpacity(0.3),),
                  ),
                  Expanded(
                    flex: 5,
                    child: Text(
                      'Tài khoản',
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.3),
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: SvgPicture.asset('assets/icons/ic_message.svg',
                        width: 24, height: 24,color: Colors.white.withOpacity(0.3),),
                  ),
                  Expanded(
                    flex: 5,
                    child: Text(
                      'Ý kiến khách hàng',
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.3),
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
