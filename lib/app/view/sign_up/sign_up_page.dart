// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hatonet_mobile/app/view/sign_in/sign_in_page.dart';

class SignUpPage extends StatefulWidget {
  final VoidCallback showLoginPage;

  const SignUpPage({Key? key, required this.showLoginPage}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _emailController = new TextEditingController();
  final _passwordController = new TextEditingController();
  final _companyController = new TextEditingController();
  final _contactnameController = new TextEditingController();
  final _phoneController = new TextEditingController();
  final _confirmpasswordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _confirmpasswordController.dispose();
    _companyController.dispose();
    _contactnameController.dispose();
    _phoneController.dispose();

    super.dispose();
  }

  var _companyErr = 'Không được bỏ trống';
  var _companyInvalid = false;

  var _emailErr = 'Không được bỏ trống';
  var _emailInvalid = false;

  var _passErr = 'Không được bỏ trống';
  var _passInvalid = false;

  bool _secureText = true;
  bool _secureText1 = true;

  Future signUp() async {
    // create user
    if (passwordConfirmed()) {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: _emailController.text.trim(),
          password: _passwordController.text.trim());

      // add user details
      addUserDetails(
          _companyController.text.trim(),
          _contactnameController.text.trim(),
          _phoneController.text.trim(),
          _emailController.text.trim());
    }
  }

  Future addUserDetails(String companyName, String contactName, String phone,
      String email) async {
    await FirebaseFirestore.instance.collection('user').add({
      'contact name': contactName,
      'company name': companyName,
      'phone': phone,
      'email': email
    });
  }

  bool passwordConfirmed() {
    if (_passwordController.text.trim() ==
        _confirmpasswordController.text.trim()) {
      return true;
    } else {
      return false;
    }
  }

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
      if (_passwordController.text.length < 6) {
        _passInvalid = true;
      } else {
        _passInvalid = false;
      }
      if (_passwordController.text.length < 6) {
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
        child: SizedBox(
          height: 20,
          child: SingleChildScrollView(
            child: Column(children: [
              SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: SvgPicture.asset(
                        'assets/icons/ic_angle_left.svg',
                        height: 24,
                        width: 24,
                      )),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                width: double.infinity,
                height: 100,
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
                        fontSize: 14,
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
                  maxLines: 1,
                  decoration: InputDecoration(
                      errorText: _companyInvalid ? _companyErr : null,
                      contentPadding: EdgeInsets.all(13),
                      labelText: 'Tên công ty',
                      labelStyle: TextStyle(fontSize: 14),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4))),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: TextField(
                  controller: _contactnameController,
                  keyboardType: TextInputType.text,
                  maxLines: 1,
                  decoration: InputDecoration(
                      errorText: _companyInvalid ? _companyErr : null,
                      contentPadding: EdgeInsets.all(13),
                      labelText: 'Tên liên hệ',
                      labelStyle: TextStyle(fontSize: 14),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4))),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: TextField(
                  controller: _phoneController,
                  keyboardType: TextInputType.text,
                  maxLines: 1,
                  decoration: InputDecoration(
                      errorText: _companyInvalid ? _companyErr : null,
                      contentPadding: EdgeInsets.all(13),
                      labelText: 'Số điện thoại',
                      labelStyle: TextStyle(fontSize: 14),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4))),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, right: 20, top: 20),
                child: TextField(
                  controller: _emailController,
                  keyboardType: TextInputType.text,
                  maxLines: 1,
                  decoration: InputDecoration(
                      errorText: _emailInvalid ? _emailErr : null,
                      contentPadding: EdgeInsets.all(13),
                      labelText: 'Email',
                      labelStyle: TextStyle(fontSize: 14),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4))),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, right: 20, top: 20),
                child: TextField(
                  controller: _passwordController,
                  keyboardType: TextInputType.multiline,
                  maxLines: 1,
                  decoration: InputDecoration(
                    errorText: _passInvalid ? _passErr : null,
                    contentPadding: EdgeInsets.all(13),
                    labelText: 'Mật khẩu',
                    labelStyle: TextStyle(fontSize: 14),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4)),
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
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: TextField(
                  controller: _confirmpasswordController,
                  keyboardType: TextInputType.multiline,
                  maxLines: 1,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(13),
                    labelText: 'Xác nhận mật khẩu',
                    labelStyle: TextStyle(fontSize: 14),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4)),
                    suffixIcon: IconButton(
                      icon: Icon(Icons.remove_red_eye),
                      onPressed: () {
                        setState(() {
                          _secureText1 = !_secureText1;
                        });
                      },
                    ),
                  ),
                  obscureText: _secureText1,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: GestureDetector(
                  onTap: signUp,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color(0xFFFF6116),
                        borderRadius: BorderRadius.circular(4)),
                    height: 45,
                    width: double.infinity,
                    child: Center(
                      child: Text(
                        'Đăng ký',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
            ]),
          ),
        ),
      ),
    ));
  }
}
