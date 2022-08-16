// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController _emailController = new TextEditingController();
  TextEditingController _passController = new TextEditingController();
  TextEditingController _companyController = new TextEditingController();

  var _companyErr = 'Không được bỏ trống';
  var _companyInvalid = false;

  var _emailErr = 'Không được bỏ trống';
  var _emailInvalid = false;

  var _passErr = 'Không được bỏ trống';
  var _passInvalid = false;

  bool _secureText = true;

  @override
  void initState() {
    super.initState();
  }

  SignInOnclick() {
    setState(() {
      if (_emailController.text.length < 6 ||
          !_emailController.text.contains('@')) {
        _emailInvalid = true;
      } else {
        _emailInvalid = false;
      }
      if (_passController.text.length < 6) {
        _passInvalid = true;
      } else {
        _passInvalid = false;
      }
      if (_companyController.text.length < 6) {
        _companyInvalid = true;
      } else {
        _companyInvalid = false;
      }
      if (!_emailInvalid && !_passInvalid && !_companyInvalid) {}
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Colors.white,
          height: double.infinity,
          width: double.infinity,
<<<<<<< Updated upstream
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
=======
          child: Column(
            children: [
              // Container(
              //   alignment: Alignment.topLeft,
              //   height: 50,
              //   width: double.infinity,
              //   child: Padding(
              //     padding: EdgeInsets.only(left: 10),
              //     child: Image.asset(
              //       'assets/images/logo hatonet-07 (2).png',
              //     ),
              //   ),
              // ),
              // Container(
              //   width: double.infinity,
              //   height: 50,
              //   child: Image.asset('assets/images/img_logo.svg'),
              // ),
              Text(
                'Đăng ký tài khoản',
                style: TextStyle(
                    fontSize: 24,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: Text(
                    'Để tiếp cận hàng ngàn nhân sự chất lượng tốt từ các doanh nghiệp ở khắp mọi nơi',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.w300),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: TextField(
                  controller: _companyController,
                  keyboardType: TextInputType.text,
                  style: TextStyle(fontSize: 25),
                  decoration: InputDecoration(
                      errorText: _companyInvalid ? _companyErr : null,
                      contentPadding: EdgeInsets.all(15),
                      labelText: 'Tên công ty',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8))),
>>>>>>> Stashed changes
                ),
                Row(
                  children: [
                    Expanded(
<<<<<<< Updated upstream
                      flex: 1,
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: InkWell(
                              onTap: (){
                                Navigator.pop(context);
                              },
                              child: Icon(Icons.arrow_back)),
=======
                      flex: 3,
                      child: Container(
                        height: 1,
                        color: Color(0xFF455A64),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Center(
                        child: Container(
                          child: Text(
                            ' Hoặc đăng nhập qua',
                            style: TextStyle(
                                color: Color(0xFF455A64),
                                fontSize: 18,
                                fontWeight: FontWeight.normal),
                          ),
>>>>>>> Stashed changes
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
<<<<<<< Updated upstream
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 5),
                          child: Text(
                            'Đăng ký tài khoản',
                            style: TextStyle(
                                fontSize: 24,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
=======
                      child: Container(
                        color: Color(0xFF455A64),
                        height: 1,
>>>>>>> Stashed changes
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  width: double.infinity,
                  height: 120,
                  child: SvgPicture.asset('assets/images/img_logo_hatonet.svg'),
                ),
                SizedBox(
                  height: 25,
                ),
                Center(
                  child: Padding(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: Text(
                      'Tiếp cận hàng ngàn nhân sự chất lượng từ các doanh nghiệp ở khắp mọi nơi',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: TextField(
                    controller: _companyController,
                    keyboardType: TextInputType.text,
                    style: TextStyle(fontSize: 25),
                    decoration: InputDecoration(
                        errorText: _companyInvalid ? _companyErr : null,
                        contentPadding: EdgeInsets.all(13),
                        labelText: 'Tên công ty',
                        labelStyle: TextStyle(fontSize: 16),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8))),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20, right: 20, top: 20),
                  child: TextField(
                    controller: _emailController,
                    keyboardType: TextInputType.text,
                    style: TextStyle(fontSize: 25),
                    decoration: InputDecoration(
                        errorText: _emailInvalid ? _emailErr : null,
                        contentPadding: EdgeInsets.all(13),
                        labelText: 'Email',
                        labelStyle: TextStyle(fontSize: 16),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8))),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20, right: 20, top: 20),
                  child: TextField(
                    controller: _passController,
                    keyboardType: TextInputType.multiline,
                    style: TextStyle(fontSize: 25),
                    decoration: InputDecoration(
                      errorText: _passInvalid ? _passErr : null,
                      contentPadding: EdgeInsets.all(13),
                      labelText: 'Mật khẩu',
                      labelStyle: TextStyle(fontSize: 16),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8)),
                      suffixIcon: IconButton(
                        icon: Icon(Icons.remove_red_eye),
                        onPressed: () {
                          setState(() {
                            _secureText = !_secureText;
                          });
                        },
                      ),
                    ),
                    obscureText: _secureText,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: GestureDetector(
                    onTap: () {
                      SignInOnclick();
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xFFFF6116),
                          borderRadius: BorderRadius.circular(4)),
                      height: 48,
                      width: double.infinity,
                      child: Center(
                        child: Text(
                          'Đăng ký',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
