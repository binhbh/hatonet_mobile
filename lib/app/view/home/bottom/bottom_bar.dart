// ignore_for_file: prefer_final_fields, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hatonet_mobile/app/view/home/home/home_page.dart';
import 'package:hatonet_mobile/app/view/home/job/job_page.dart';
import 'package:hatonet_mobile/app/view/home/notification/notification_page.dart';
import 'package:hatonet_mobile/app/view/home/other/other_page.dart';
import 'package:hatonet_mobile/app/widget/NavigationDrawerWidget.dart';

class BottomBarPage extends StatefulWidget {
  const BottomBarPage({Key? key}) : super(key: key);

  @override
  State<BottomBarPage> createState() => _BottomBarPageState();
}

class _BottomBarPageState extends State<BottomBarPage> {
  var _currentIndex = 0;
  int index = 0;
  GlobalKey<ScaffoldState> _drawerKey = GlobalKey();
  static List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    JobPage(),
    NotificationPage(),
  ];
  void _onItemTapped(int index) {
    index == 3
        ? _drawerKey.currentState?.openDrawer()
        : setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    bool onSelected = true;

    return SafeArea(
      child: Scaffold(
        key: _drawerKey,
        drawer: NavigationDrawerWidget(),
        appBar: AppBar(
          title: Text('Navigation Drawer'),
        ),
        backgroundColor: Colors.white,
        bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: true,

          currentIndex: _currentIndex,
          backgroundColor: Color(0xFFF9FAFB),
          type: BottomNavigationBarType.fixed,
          onTap: _onItemTapped,
          items: [
            BottomNavigationBarItem(
              backgroundColor: Colors.blue,
              label: "Trang chủ",
              icon: SvgPicture.asset(
                onSelected == false
                    ? 'assets/icons/ic_home.svg'
                    : 'assets/icons/ic_home.svg',
                width: 24,
              ),
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.blue,
              icon: SvgPicture.asset(
                onSelected == false
                    ? 'assets/icons/ic_work.svg'
                    : 'assets/icons/ic_work.svg',
                width: 24,
              ),
              label: "Việc làm",
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.blue,
              icon: SvgPicture.asset(
                onSelected == false
                    ? 'assets/icons/ic_bell.svg'
                    : 'assets/icons/ic_bell.svg',
                width: 24,
              ),
              label: "Thông báo",
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.blue,
              icon: SvgPicture.asset(
                onSelected == false
                    ? 'assets/icons/ic_bars.svg'
                    : 'assets/icons/ic_bars.svg',
                width: 24,
              ),
              label: "Khác",
            ),
          ],
        ),
        body: _widgetOptions[_currentIndex],
      ),
    );
  }
}
