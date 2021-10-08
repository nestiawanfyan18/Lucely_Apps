import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lucely/pages/Sign_up_page.dart';
import 'package:lucely/pages/homes/education_page.dart';
import 'package:lucely/pages/homes/education_pages/komik_main.dart';
import 'package:lucely/pages/homes/education_pages/list_Education_page.dart';
import 'package:lucely/pages/homes/emergency_pages/get_psycology_emergencey_page.dart';
import 'package:lucely/pages/homes/emergency_pages/search_psikologi_page.dart';
import 'package:lucely/pages/homes/emergency_pages/main_emergency_page.dart';
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
        '/education': (context) => MainPage(
              indexPages: 1,
            ),
        '/listEducation': (context) => ListEducationPage(),
        '/emergency': (context) => EmergencyPage(),
        '/emergency-get-psycology': (context) => GetPsycologyEmergencyPage(),
        '/emergency-search-psikologi': (context) =>
            SearchPsikologiEmergencyPage(),
        '/komik-main': (context) => KomikMainPage(),
      },
    );
  }
}
