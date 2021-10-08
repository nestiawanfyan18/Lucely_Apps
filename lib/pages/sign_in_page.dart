import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lucely/component.dart';
import 'package:lucely/theme.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Login",
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

    Widget emailInput() => TextContainer(
          label: "Email Address",
          placeholder: "Enter your Email Address",
          imageUrl: "assets/images/email_icon.png",
          containerHeight: 50,
          topMargin: 33,
          isPassword: false,
        );

    Widget passwordInput() => TextContainer(
          label: "Password",
          placeholder: "Enter your Password",
          imageUrl: "assets/images/password_icon.png",
          containerHeight: 50,
          topMargin: 20,
          isPassword: true,
        );

    Widget signInButton() => RegularButton(
<<<<<<< HEAD
        color: primaryColor,
        text: "Sign In",
        contextParent: context,
        route: "/home");
=======
          color: primaryColor,
          text: "Sign In",
          context: context,
          route: "/home",
          replacePage: true,
        );
>>>>>>> c8f331468b4d08c897de7c4060acc212e0eff5f6

    Widget footer() {
      return Container(
        margin: EdgeInsets.symmetric(vertical: 40),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Don\'t Have an Account? ',
              style: secondaryTextStyle.copyWith(
                fontSize: 12,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/sign-up');
              },
              child: Text(
                'Sign Up',
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
                    emailInput(),
                    passwordInput(),
                    signInButton(),
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
