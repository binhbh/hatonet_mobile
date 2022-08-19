import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hatonet_mobile/app/view/home/bottom/bottom_bar.dart';
import 'package:hatonet_mobile/app/view/home/forgot_password/forgot_password_page.dart';
import 'package:provider/provider.dart';
import '../sign_up/sign_up_page.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  TextEditingController _emailController = new TextEditingController();
  TextEditingController _passController = new TextEditingController();

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
      if (!_emailInvalid && !_passInvalid) {}
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
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 5),
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
              Container(
                width: double.infinity,
                height: 50,
                child: Image.asset('assets/images/img_logo.svg'),
              ),
              Text(
                'Đăng nhập',
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
                    'Đăng nhập',
                    style: TextStyle(
                        fontSize: 26,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
    ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  alignment: Alignment.topLeft,
                  height: 120,
                  width: double.infinity,
                  child: Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Center(
                      child: SvgPicture.asset(
                        'assets/images/img_logo_hatonet.svg',
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
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
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.all(20),
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
                  padding: EdgeInsets.only(left: 20, right: 20),
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
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: GestureDetector(
                    onTap: () {
                      SignInOnclick();
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>BottomBarPage()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xFFFF6116),
                          borderRadius: BorderRadius.circular(4)),
                      height: 48,
                      width: double.infinity,
                      child: Center(
                        child: Text(
                          'Đăng nhập',
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
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
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
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Container(
                        color: Color(0xFF455A64),
                        height: 1,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Color(0xFF455A64),
                    borderRadius: BorderRadius.circular(5)),
                padding: EdgeInsets.symmetric(horizontal: 1, vertical: 1),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignInPage()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(4)),
                    height: 48,
                    width: 350,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          'assets/icons/ic_facebook.svg',
                          color: Color(0xFF1877F2),
                          height: 30,
                          width: 30,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Đăng ký qua Facebook',
                          style: TextStyle(
                              color: Color(0xFF455A64),
                              fontSize: 18,
                              fontWeight: FontWeight.normal),
                        )
                      ],
                    ),
                  ),
                ),
                    ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Container(
                          height: 1,
                          color: Color(0xFF455A64),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          child: Center(
                            child: Text(
                              'Hoặc',
                              style: TextStyle(
                                  color: Color(0xFF455A64),
                                  fontSize: 18,
                                  fontWeight: FontWeight.normal),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(
                          color: Color(0xFF455A64),
                          height: 1,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'assets/icons/ic_facebook.svg',
                      color: Color(0xFF1877F2),
                      height: 50,
                      width: 50,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    InkWell(
                      onTap: (){
                      },
                      child: SvgPicture.asset(
                        'assets/icons/ic_google.svg',
                        height: 59,
                        width: 50,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignUpPage()));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Đăng kí tài khoản mới',
                        style: TextStyle(
                            color: Color(0xFF455A64),
                            fontSize: 18,
                            fontWeight: FontWeight.normal),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.arrow_forward_outlined,
                        color: Color(0xFF455A64),
                        size: 18,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ForgotPasswordPage()));
                  },
                  child: Text(
                    'Quên mật khẩu',
                    style: TextStyle(
                        color: Color(0xFF455A64),
                        fontSize: 18,
                        fontWeight: FontWeight.normal),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Quên mật khẩu',
                style: TextStyle(
                    color: Color(0xFF455A64),
                    fontSize: 18,
                    fontWeight: FontWeight.normal),
              ),
            ],
          ),
        ),
      ),
    ),
    );
  }
}
