// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  String? _selectedCountry;
  String? _selectedScale;
  String? _selectedActivity;

  final List<String> _activity = [
    "Product",
    "Outsourcing",
    "Solution",
    "Consultant",
    "Service",
    "Human Resource",
  ];

  final List<String> _country = [
    "Hà Nội",
    "Hồ Chí Minh",
    "Vĩnh Phúc",
    "Ninh Bình",
    "Cà Mau",
    "Nghệ An",
    "Vĩnh Long"
  ];
  final List<String> _scale = [
    "Hà Nội",
    "Hồ Chí Minh",
    "Vĩnh Phúc",
    "Ninh Bình",
    "Cà Mau",
    "Nghệ An",
    "Vĩnh Long"
  ];

  final Map<String, IconData> _data = Map.fromIterables(
      ['First', 'Second', 'Third'],
      [Icons.filter_1, Icons.filter_2, Icons.filter_3]);
  String? _selectedType;
  IconData? _selectedIcon;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        initialIndex: 1,
        length: 3,
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Color(0xFFFF6116),
            bottom: TabBar(
              indicatorColor: Colors.white,
              labelColor: Colors.white,
              labelStyle: const TextStyle(fontWeight: FontWeight.bold),
              unselectedLabelStyle:
                  const TextStyle(fontStyle: FontStyle.italic),
              overlayColor:
                  MaterialStateColor.resolveWith((Set<MaterialState> states) {
                if (states.contains(MaterialState.pressed)) {
                  return Colors.white;
                }
                if (states.contains(MaterialState.focused)) {
                  return Colors.white;
                } else if (states.contains(MaterialState.hovered)) {
                  return Colors.white;
                }
                return Colors.white;
              }),
              tabs: [
                Tab(
                  child: Column(
                    children: [
                      SvgPicture.asset(
                        'assets/icons/ic_bell_ringing.svg',
                        height: 26,
                        width: 26,
                      ),
                      Spacer(),
                      Text(
                        'Thông báo',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 10,
                            fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                ),
                Tab(
                  child: Column(
                    children: [
                      SvgPicture.asset(
                        'assets/icons/ic_building_columns.svg',
                        height: 24,
                        width: 24,
                      ),
                      Spacer(),
                      Text(
                        'Liên kết tài khoản ',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 10,
                            fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                ),
                Tab(
                  child: Column(
                    children: [
                      SvgPicture.asset(
                        'assets/icons/ic_shield.svg',
                        height: 24,
                        width: 24,
                      ),
                      Spacer(),
                      Text(
                        'Thông báo',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 10,
                            fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          body: Column(
            children: [
              Expanded(
                flex: 10,
                child: TabBarView(
                  children: [
                    Container(
                      child: SingleChildScrollView(
                        physics: BouncingScrollPhysics(),
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(10.0),
                              child: DropdownButtonHideUnderline(
                                child: DropdownButton<String>(
                                    items: _data.keys.map((String val) {
                                      return DropdownMenuItem<String>(
                                        value: val,
                                        child: Row(
                                          children: <Widget>[
                                            Padding(
                                              padding: EdgeInsets.symmetric(horizontal: 10.0),
                                              child: Icon(_data[val]),
                                            ),
                                            Text(val),
                                          ],
                                        ),
                                      );
                                    }).toList(),
                                    hint: Row(
                                      children: <Widget>[
                                        Padding(
                                          padding: EdgeInsets.symmetric(horizontal: 12.0),
                                          child:
                                          Icon(_selectedIcon ?? _data.values.toList()[0]),
                                        ),
                                        Text(_selectedType ?? _data.keys.toList()[0]),
                                      ],
                                    ),
                                    onChanged: (val) {
                                      setState(() {
                                        _selectedType = val;
                                        _selectedIcon = _data[val];
                                      });
                                    }),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(20),
                              child: TextField(
                                keyboardType: TextInputType.text,
                                style: TextStyle(fontSize: 25),
                                decoration: InputDecoration(
                                    contentPadding: EdgeInsets.all(13),
                                    labelText: 'Lĩnh vực hoạt động chủ yếu',
                                    labelStyle: TextStyle(fontSize: 12),
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(5))),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    'THÔNG TIN LIÊN HỆ',
                                    style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.w300),
                                  )),
                            ),
                            Padding(
                              padding:
                                  EdgeInsets.only(left: 20, right: 20, top: 15),
                              child: TextField(
                                keyboardType: TextInputType.text,
                                style: TextStyle(fontSize: 25),
                                decoration: InputDecoration(
                                    contentPadding: EdgeInsets.all(13),
                                    labelText: 'Số điện thoại',
                                    labelStyle: TextStyle(fontSize: 12),
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(5))),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsets.only(left: 20, right: 20, top: 15),
                              child: TextField(
                                keyboardType: TextInputType.text,
                                style: TextStyle(fontSize: 25),
                                decoration: InputDecoration(
                                    contentPadding: EdgeInsets.all(13),
                                    labelText: 'Tỉnh/Thành phố',
                                    labelStyle: TextStyle(fontSize: 12),
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(5))),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsets.only(left: 20, right: 20, top: 15),
                              child: TextField(
                                keyboardType: TextInputType.text,
                                style: TextStyle(fontSize: 25),
                                decoration: InputDecoration(
                                    contentPadding: EdgeInsets.all(13),
                                    labelText: 'Tên người liên hệ',
                                    labelStyle: TextStyle(fontSize: 12),
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(5))),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsets.only(left: 20, right: 20, top: 15),
                              child: TextField(
                                keyboardType: TextInputType.text,
                                style: TextStyle(fontSize: 25),
                                decoration: InputDecoration(
                                    contentPadding: EdgeInsets.all(13),
                                    labelText: 'Skype',
                                    labelStyle: TextStyle(fontSize: 12),
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(5))),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsets.only(left: 20, right: 20, top: 15),
                              child: TextField(
                                keyboardType: TextInputType.text,
                                style: TextStyle(fontSize: 25),
                                decoration: InputDecoration(
                                    contentPadding: EdgeInsets.all(13),
                                    labelText: 'Mã số thuế',
                                    labelStyle: TextStyle(fontSize: 12),
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(5))),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsets.only(left: 20, right: 20, top: 15),
                              child: TextField(
                                keyboardType: TextInputType.text,
                                style: TextStyle(fontSize: 25),
                                decoration: InputDecoration(
                                    contentPadding: EdgeInsets.all(13),
                                    labelText: 'Website',
                                    labelStyle: TextStyle(fontSize: 12),
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(5))),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsets.only(left: 20, right: 20, top: 15),
                              child: TextField(
                                keyboardType: TextInputType.text,
                                style: TextStyle(fontSize: 25),
                                decoration: InputDecoration(
                                    contentPadding: EdgeInsets.all(13),
                                    labelText: 'Email',
                                    labelStyle: TextStyle(fontSize: 12),
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(5))),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsets.only(left: 20, right: 20, top: 15),
                              child: TextField(
                                keyboardType: TextInputType.text,
                                style: TextStyle(fontSize: 25),
                                decoration: InputDecoration(
                                    contentPadding: EdgeInsets.all(13),
                                    labelText: 'Địa chỉ chi tiết',
                                    labelStyle: TextStyle(fontSize: 12),
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(5))),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsets.only(left: 20, right: 20, top: 15),
                              child: TextField(
                                keyboardType: TextInputType.text,
                                style: TextStyle(fontSize: 25),
                                decoration: InputDecoration(
                                    contentPadding: EdgeInsets.all(13),
                                    labelText: 'Qut mô công ty',
                                    labelStyle: TextStyle(fontSize: 12),
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(5))),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsets.only(left: 20, right: 20, top: 15),
                              child: TextField(

                                keyboardType: TextInputType.text,
                                cursorHeight: 25,
                                style: TextStyle(fontSize: 50),
                                decoration: InputDecoration(
                                    contentPadding: EdgeInsets.all(13),
                                    labelText: 'Giới thiệu',
                                    labelStyle: TextStyle(fontSize: 12),
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(5))),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      child: SingleChildScrollView(
                        physics: BouncingScrollPhysics(),
                        child: Column(
                          children: [
                            Padding(
                              padding:
                                  EdgeInsets.only(left: 20, right: 20, top: 20),
                              child: TextField(
                                keyboardType: TextInputType.text,
                                style: TextStyle(fontSize: 25),
                                decoration: InputDecoration(
                                    contentPadding: EdgeInsets.all(13),
                                    labelText: 'Tên ngân hàng',
                                    labelStyle: TextStyle(fontSize: 12),
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(5))),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsets.only(left: 20, right: 20, top: 15),
                              child: TextField(
                                keyboardType: TextInputType.text,
                                style: TextStyle(fontSize: 25),
                                decoration: InputDecoration(
                                    contentPadding: EdgeInsets.all(13),
                                    labelText: 'Tên chủ thẻ',
                                    labelStyle: TextStyle(fontSize: 12),
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(5))),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsets.only(left: 20, right: 20, top: 15),
                              child: TextField(
                                keyboardType: TextInputType.text,
                                style: TextStyle(fontSize: 25),
                                decoration: InputDecoration(
                                    contentPadding: EdgeInsets.all(13),
                                    labelText: 'Số tài khoản',
                                    labelStyle: TextStyle(fontSize: 12),
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(5))),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsets.only(left: 20, right: 20, top: 15),
                              child: TextField(
                                keyboardType: TextInputType.text,
                                style: TextStyle(fontSize: 25),
                                decoration: InputDecoration(
                                    contentPadding: EdgeInsets.all(13),
                                    labelText: 'Ngày phát hành',
                                    labelStyle: TextStyle(fontSize: 12),
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(5))),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsets.only(left: 20, right: 20, top: 15),
                              child: TextField(
                                keyboardType: TextInputType.text,
                                style: TextStyle(fontSize: 25),
                                decoration: InputDecoration(
                                    contentPadding: EdgeInsets.all(13),
                                    labelText: 'Chi nhánh ngân hàng',
                                    labelStyle: TextStyle(fontSize: 12),
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(5))),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      child: SingleChildScrollView(
                        physics: BouncingScrollPhysics(),
                        child: Column(
                          children: [
                            Padding(
                              padding:
                                  EdgeInsets.only(left: 20, right: 20, top: 20),
                              child: TextField(
                                keyboardType: TextInputType.text,
                                style: TextStyle(fontSize: 25),
                                decoration: InputDecoration(
                                    contentPadding: EdgeInsets.all(13),
                                    labelText: 'Mật khẩu hiện tại',
                                    labelStyle: TextStyle(fontSize: 12),
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(5))),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsets.only(left: 20, right: 20, top: 15),
                              child: TextField(
                                keyboardType: TextInputType.text,
                                style: TextStyle(fontSize: 25),
                                decoration: InputDecoration(
                                    contentPadding: EdgeInsets.all(13),
                                    labelText: 'Mật khẩu mới',
                                    labelStyle: TextStyle(fontSize: 12),
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(5))),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsets.only(left: 20, right: 20, top: 15),
                              child: TextField(
                                keyboardType: TextInputType.text,
                                style: TextStyle(fontSize: 25),
                                decoration: InputDecoration(
                                    contentPadding: EdgeInsets.all(13),
                                    labelText: 'Xác nhận mật khẩu',
                                    labelStyle: TextStyle(fontSize: 12),
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(5))),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: GestureDetector(
                    onTap: () {
                      final snackBar = SnackBar(
                        content: const Text('Yều cầu nhập đủ thông tin'),
                        action: SnackBarAction(
                          onPressed: () {},
                          label: '',
                        ),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xFFFF6116),
                          borderRadius: BorderRadius.circular(4)),
                      height: 48,
                      width: double.infinity,
                      child: Center(
                        child: Text(
                          'Cập nhật',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.bold),
                        ),
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
    );
  }
}
