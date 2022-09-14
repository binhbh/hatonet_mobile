// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:hatonet_mobile/app/provider/google_sign_in_provider.dart';
import 'package:hatonet_mobile/app/provider/internet_provider.dart';
import 'package:hatonet_mobile/app/utils/next_screen.dart';
import 'package:hatonet_mobile/app/utils/snack_bar.dart';
import 'package:hatonet_mobile/app/view/home/bottom/bottom_bar.dart';
import 'package:hatonet_mobile/app/view/home/forgot_password/forgot_password_page.dart';
import 'package:hatonet_mobile/app/view/home/home/home_page.dart';
import 'package:hatonet_mobile/app/widget/custom_page_route.dart';
import 'package:provider/provider.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

final GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);

class SignInPage extends StatefulWidget {
  final VoidCallback showRegisterPage;

  const SignInPage({Key? key, required this.showRegisterPage})
      : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  Future signIn() async {
    showDialog(
        context: context,
        builder: (context) {
          return Center(
            child: CircularProgressIndicator(
              color: Color(0xFFFF6116),
            ),
          );
        });
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim());
    Navigator.of(context).pop();
  }

  // signInWithGoogle() async {
  //   //trigger the authentication flow
  //   final GoogleSignInAccount? googleUser =
  //       await GoogleSignIn(scopes: <String>["email"]).signIn();
  //
  //   //obtain the auth details from the request
  //   final GoogleSignInAuthentication googleAuth =
  //       await googleUser!.authentication;
  //
  //   //create a new credential
  //   final credential = GoogleAuthProvider.credential(
  //     accessToken: googleAuth.accessToken,
  //     idToken: googleAuth.idToken,
  //   );
  //   //once logged in, return UserCredential
  //   return await FirebaseAuth.instance.signInWithCredential(credential);
  // }

  Future<void> signInWithGoogle() async {
    try {
      await _googleSignIn.signIn();
    } catch (e) {
      print('Error signing in $e');
    }
  }

  GoogleSignInAccount? _currentUser;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  bool _secureText = true;

  final GlobalKey _scaffoldkey = GlobalKey<ScaffoldState>();
  final RoundedLoadingButtonController googleController =
      RoundedLoadingButtonController();
  final RoundedLoadingButtonController facebookController =
      RoundedLoadingButtonController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldkey,
        body: Container(
            color: Colors.white,
            height: double.infinity,
            width: double.infinity,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 5),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          alignment: Alignment.topLeft,
                          height: 100,
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
                                  fontSize: 14,
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
                            cursorColor: Color(0xFFFF6116),
                            controller: _emailController,
                            keyboardType: TextInputType.text,
                            maxLines: 1,
                            decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color(0xFFFF6116), width: 2),
                                ),
                                //   errorText: _emailInvalid ? _emailErr : null,
                                contentPadding: EdgeInsets.all(13),
                                labelText: 'Email',
                                labelStyle: TextStyle(
                                    fontSize: 14,
                                    color: Color(0xFFFF6116),
                                    fontWeight: FontWeight.w300),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(4))),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20, right: 20),
                          child: TextField(
                            cursorColor: Color(0xFFFF6116),
                            controller: _passwordController,
                            keyboardType: TextInputType.multiline,
                            maxLines: 1,
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color(0xFFFF6116), width: 2),
                              ),
                              //    errorText: _passInvalid ? _passErr : null,
                              contentPadding: EdgeInsets.all(13),
                              labelText: 'Mật khẩu',
                              labelStyle: TextStyle(
                                  fontSize: 14,
                                  color: Color(0xFFFF6116),
                                  fontWeight: FontWeight.w300),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(4)),
                              suffixIcon: IconButton(
                                icon: Icon(
                                  Icons.remove_red_eye,
                                  color: Color(0xFFFF6116),
                                ),
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

                               signIn();
                              // // Get.to(() => BottomBarPage(), transition: Transition.zoom);
                              // Navigator.of(context).push(
                              //   CustomPageRoute(
                              //     child: BottomBarPage(),
                              //     direction: AxisDirection.left
                              //   ),
                              // );
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Color(0xFFFF6116),
                                  borderRadius: BorderRadius.circular(5)),
                              height: 45,
                              width: double.infinity,
                              child: Center(
                                child: Text(
                                  'Đăng nhập',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Column(
                          children: [
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
                          ],
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
                              height: 40,
                              width: 40,
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            InkWell(
                              onTap: () {
                                handleGoogleSignIn();
                              },
                              child: SvgPicture.asset(
                                'assets/icons/ic_google.svg',
                                height: 45,
                                width: 45,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        InkWell(
                          onTap: widget.showRegisterPage,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Đăng kí tài khoản mới',
                                style: TextStyle(
                                    color: Color(0xFF455A64),
                                    fontSize: 16,
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
                                    builder: (context) =>
                                        ForgotPasswordPage()));
                          },
                          child: Text(
                            'Quên mật khẩu',
                            style: TextStyle(
                                color: Color(0xFF455A64),
                                fontSize: 16,
                                fontWeight: FontWeight.normal),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )),
      ),
    );
  }

  //handling google sigin in

  Future handleGoogleSignIn() async {
    final sp = context.read<SignInProvider>();
    final ip = context.read<InternetProvider>();
    await ip.checkInternetConnection();

    if (ip.hasInternet == false) {
      openSnackbar(context, "Check your Internet connection", Colors.red);
      googleController.reset();
    } else {
      await sp.signInWithGoogle().then((value) {
        if (sp.hasError == true) {
          openSnackbar(context, sp.errorCode.toString(), Colors.red);
          googleController.reset();
        } else {
          // checking whether user exists or not
          sp.checkUserExists().then((value) async {
            if (value == true) {
              // user exists
              await sp.getUserDataFromFirestore(sp.uid).then((value) => sp
                  .saveDataToSharedPreferences()
                  .then((value) => sp.setSignIn().then((value) {
                        googleController.success();
                        handleAfterSignIn();
                      })));
            } else {
              //user does not exist
              sp.saveDataToFirestore().then((value) => sp
                  .saveDataToSharedPreferences()
                  .then((value) => sp.setSignIn().then((value) {
                        googleController.success();
                        handleAfterSignIn();
                      })));
            }
          });
        }
      });
    }
    // internet provider should
  }

  handleAfterSignIn() async {
    Future.delayed(Duration(milliseconds: 1000)).then((value) {
      nextScreenReplace(context, HomePage());
    });
  }
}
