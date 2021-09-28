import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lucely/pages/Sign_up_page.dart';
import 'package:lucely/pages/homes/main_page.dart';
import 'package:lucely/pages/sign_in_page.dart';
import 'package:lucely/pages/splace_screen.dart';
// ignore: unused_import
import 'theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplaceScreen(),
        '/sign-in': (context) => SignIn(),
        '/sign-up': (context) => SignUp(),
        '/home': (context) => MainPage(),
      },
    );
  }
}
