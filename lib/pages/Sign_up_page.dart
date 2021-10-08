import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lucely/theme.dart';
import 'package:lucely/component.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Register",
              style: primaryTextStyle.copyWith(
                fontSize: 33,
                fontWeight: bold,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                style: secondaryTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: regular,
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget fullNameInput() => TextContainer(
          label: "Full Name",
          isPassword: false,
          placeholder: "Enter your Name",
          imageUrl: "assets/images/email_icon.png",
          topMargin: 33,
        );

    Widget emailInput() => TextContainer(
          label: "Email Address",
          isPassword: false,
          placeholder: "Enter your Email Address",
          imageUrl: "assets/images/email_icon.png",
        );

    Widget passwordInput() => TextContainer(
          label: "Password",
          isPassword: true,
          placeholder: "Enter your Password",
          imageUrl: "assets/images/password_icon.png",
        );

    Widget signUpButton() => RegularButton(
          color: primaryColor,
          text: "Sign Up",
          contextParent: context,
          route: '/home',
        );

    Widget footer() {
      return Container(
        margin: EdgeInsets.symmetric(vertical: 40),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You Have an Account? ',
              style: secondaryTextStyle.copyWith(
                fontSize: 12,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/sign-in');
              },
              child: Text(
                'Sign In',
                style: linkTextStyle.copyWith(
                  fontSize: 12,
                  fontWeight: medium,
                ),
              ),
            ),
          ],
        ),
      );
    }

    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);

        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: SafeArea(
        child: Scaffold(
          backgroundColor: backgroundColor,
          resizeToAvoidBottomInset: false,
          body: Center(
            child: Container(
              margin: EdgeInsets.symmetric(
                horizontal: defaultMargin,
              ),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    header(),
                    fullNameInput(),
                    emailInput(),
                    passwordInput(),
                    signUpButton(),
                    footer(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
