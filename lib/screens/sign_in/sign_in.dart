import 'package:blogapp/screens/sign_in/widgets/sign_in_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: buildAppBar(),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildThirdPartyLogin(context),
                Center(
                    child:
                        reusableText("Or Use Your Email account to Log in.")),
                Container(
                  padding: EdgeInsets.only(left: 20.w, right: 20.w),
                  margin: EdgeInsets.only(top: 66.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      reusableText("Email"),
                      CustomTextField(
                          "enter your email address", "email", "user"),
                      reusableText("password"),
                      CustomTextField(
                          "enter your Password ", "password", "lock"),
                    ],
                  ),
                ),
                ForgetPassword(),
                LoginRegisterBtn("Log In","login"),
                LoginRegisterBtn("Register","register"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
