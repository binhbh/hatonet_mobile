// ignore_for_file: prefer_const_constructors, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hatonet_mobile/app/view/home/dashboard/dashboard_page.dart';

class NavigationDrawerWidget extends StatefulWidget {
  NavigationDrawerWidget({Key? key}) : super(key: key);

  @override
  State<NavigationDrawerWidget> createState() => _NavigationDrawerWidgetState();
}

class _NavigationDrawerWidgetState extends State<NavigationDrawerWidget> {
  final padding = EdgeInsets.symmetric(horizontal: 20);

  String? _selectedValue1;
  String? _selectedVlaue2;
  final List<String> _Job1 = ["Tin đăng tuyển", "Đã ứng tuyển", "Đã lưu"];
  final List<String> _Job2 = ["Danh sách của tôi", "Đã ứng tuyển"];

  //đổi màu Dashboard
  bool _hasBeenDashboard = false;
  bool _hasBeenTextDashboard = false;

  //đổi màu việc đang tuyển
  bool _hasBeenJob = false;
  bool _hasBeenTextJob = false;

  //đổi màu thông báo
  bool _hasBeenNotification = false;
  bool _hasBeenTextNotification  = false;

  //Gói dịch vụ
  bool _hasBeenServicePack= false;
  bool _hasBeenTextServicePack  = false;

  //Account
  bool _hasBeenAccount = false;
  bool _hasBeenTextAccount  = false;

  //Ý kiến khách hàng
  bool _hasBeencustomer = false;
  bool _hasBeenTextcustomer  = false;

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
                    fontSize: 18,
                    color: Colors.white.withOpacity(0.3),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.only(left: 5),
              height: 40,
              child: FlatButton(
                color: _hasBeenDashboard ? Color(0xFFFF6116).withOpacity(0.5) : Color(0xFF1F1F1F),
                onPressed: () {
                  setState(() {
                    _hasBeenDashboard = !_hasBeenDashboard;
                    _hasBeenTextDashboard = !_hasBeenTextDashboard;
                  });
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => DashBoardPage()));
                },
                child: Row(
                  children: [
                    Expanded(
                        flex: 1,
                        child: SvgPicture.asset(
                          'assets/icons/ic_grid_add.svg',
                          width: 20,
                          height: 20,
                          color: Colors.white.withOpacity(0.8),
                        )),
                    Expanded(
                      flex: 5,
                      child: Text(
                        'Dashboard',
                        style: TextStyle(
                            color: _hasBeenTextDashboard
                                ? Colors.white.withOpacity(0.8)
                                : Colors.white.withOpacity(0.8),
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              padding: EdgeInsets.only(left: 5),
              height: 40,
              child: FlatButton(
                color: _hasBeenJob ? Color(0xFFFF6116).withOpacity(0.5) : Color(0xFF1F1F1F),
                onPressed: () {
                  setState(() {
                    _hasBeenJob = !_hasBeenJob;
                    _hasBeenTextJob = !_hasBeenTextJob;
                  });

                },
                child: Row(
                  children: [
                    Expanded(
                        flex: 1,
                        child: SvgPicture.asset(
                          'assets/icons/ic_list.svg',
                          width: 20,
                          height: 20,
                          color: Colors.white.withOpacity(0.3),
                        )),
                    Expanded(
                      flex: 5,
                      child: Text(
                        'Việc đang tuyển',
                        style: TextStyle(
                            color: _hasBeenTextJob
                                ? Colors.white.withOpacity(0.3)
                                : Colors.white.withOpacity(0.3),
                            fontSize: 14,
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
              padding: EdgeInsets.only(left: 10),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'QUẢN LÝ CÔNG VIỆC',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white.withOpacity(0.3),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: DropdownButton<String>(
                value: _selectedValue1,
                onChanged: (value) {
                  setState(() {
                    _selectedValue1 = value;
                  });
                },
                hint: Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: SvgPicture.asset(
                          'assets/icons/ic_assignment.svg',
                          width: 20,
                          height: 20,
                          color: Colors.white.withOpacity(0.3),
                        ),
                      ),
                      Expanded(
                        flex: 4,
                        child: Text(
                          'Quản lý việc làm',
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.3),
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                ),
                underline: Container(),
                isExpanded: true,
                items: _Job1.map(
                  (e) => DropdownMenuItem(
                    value: e,
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        e,
                        style: const TextStyle(fontSize: 14),
                      ),
                    ),
                  ),
                ).toList(),
                selectedItemBuilder: (BuildContext context) => _Job1.map(
                  (e) => Center(
                    child: Text(
                      e,
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.white.withOpacity(0.3),
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ).toList(),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: DropdownButton<String>(
                value: _selectedVlaue2,
                onChanged: (value) {
                  setState(() {
                    _selectedVlaue2 = value;
                  });
                },
                hint: Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: SvgPicture.asset(
                          'assets/icons/ic_users.svg',
                          width: 20,
                          height: 20,
                          color: Colors.white.withOpacity(0.3),
                        ),
                      ),
                      Expanded(
                        flex: 4,
                        child: Text(
                          'Hồ sơ ứng viên',
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.3),
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                ),
                underline: Container(),
                isExpanded: true,
                items: _Job2.map(
                  (e) => DropdownMenuItem(
                    value: e,
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        e,
                        style: const TextStyle(fontSize: 14),
                      ),
                    ),
                  ),
                ).toList(),
                selectedItemBuilder: (BuildContext context) => _Job2.map(
                  (e) => Center(
                    child: Text(
                      e,
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.white.withOpacity(0.3),
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ).toList(),
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
                  'CÀI ĐẶT',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white.withOpacity(0.3),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),

            //Thông báo
            Container(
              padding: EdgeInsets.only(left: 5),
              height: 40,
              child: FlatButton(
                color: _hasBeenNotification ? Color(0xFFFF6116).withOpacity(0.5) : Color(0xFF1F1F1F),
                onPressed: () {
                  setState(() {
                    _hasBeenNotification = !_hasBeenNotification;
                    _hasBeenTextNotification = !_hasBeenTextNotification;
                  });
                },
                child: Row(
                  children: [
                    Expanded(
                        flex: 1,
                        child: SvgPicture.asset(
                          'assets/icons/ic_bell_z.svg',
                          width: 20,
                          height: 20,
                          color: Colors.white.withOpacity(0.3),
                        )),
                    Expanded(
                      flex: 5,
                      child: Text(
                        'Thông báo',
                        style: TextStyle(
                            color: _hasBeenTextNotification
                                ? Colors.white.withOpacity(0.3)
                                : Colors.white.withOpacity(0.3),
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            // Gói dịch vụ
            Container(
              padding: EdgeInsets.only(left: 5),
              height: 40,
              child: FlatButton(
                color: _hasBeenServicePack ? Color(0xFFFF6116).withOpacity(0.5) : Color(0xFF1F1F1F),
                onPressed: () {
                  setState(() {
                    _hasBeenServicePack = !_hasBeenServicePack;
                    _hasBeenTextServicePack = !_hasBeenTextServicePack;
                  });
                },
                child: Row(
                  children: [
                    Expanded(
                        flex: 1,
                        child: SvgPicture.asset(
                          'assets/icons/ic_package.svg',
                          width: 20,
                          height: 20,
                          color: Colors.white.withOpacity(0.3),
                        )),
                    Expanded(
                      flex: 5,
                      child: Text(
                        'Gói dịch vụ',
                        style: TextStyle(
                            color: _hasBeenTextServicePack
                                ? Colors.white.withOpacity(0.3)
                                : Colors.white.withOpacity(0.3),
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),

            //Tài khoản
            Container(
              padding: EdgeInsets.only(left: 5),
              height: 40,
              child: FlatButton(
                color: _hasBeenAccount ? Color(0xFFFF6116).withOpacity(0.5) : Color(0xFF1F1F1F),
                onPressed: () {
                  setState(() {
                    _hasBeenAccount = !_hasBeenAccount;
                    _hasBeenTextAccount = !_hasBeenTextAccount;
                  });
                },
                child: Row(
                  children: [
                    Expanded(
                        flex: 1,
                        child: SvgPicture.asset(
                          'assets/icons/ic_users.svg',
                          width: 20,
                          height: 20,
                          color: Colors.white.withOpacity(0.3),
                        )),
                    Expanded(
                      flex: 5,
                      child: Text(
                        'Tài Khoản',
                        style: TextStyle(
                            color: _hasBeenTextAccount
                                ? Colors.white.withOpacity(0.3)
                                : Colors.white.withOpacity(0.3),
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.only(left: 5),
              height: 40,
              child: FlatButton(
                color: _hasBeencustomer ? Color(0xFFFF6116).withOpacity(0.5) : Color(0xFF1F1F1F),
                onPressed: () {
                  setState(() {
                    _hasBeencustomer = !_hasBeencustomer;
                    _hasBeenTextcustomer = !_hasBeenTextcustomer;
                  });
                },
                child: Row(
                  children: [
                    Expanded(
                        flex: 1,
                        child: SvgPicture.asset(
                          'assets/icons/ic_message.svg',
                          width: 20,
                          height: 20,
                          color: Colors.white.withOpacity(0.3),
                        )),
                    Expanded(
                      flex: 5,
                      child: Text(
                        'Ý kiến khách hàng',
                        style: TextStyle(
                            color: _hasBeenTextcustomer
                                ? Colors.white.withOpacity(0.3)
                                : Colors.white.withOpacity(0.3),
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
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
