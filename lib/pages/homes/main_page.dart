import 'package:flutter/material.dart';
import 'package:lucely/pages/homes/education_page.dart';
import 'package:lucely/pages/homes/favorite_page.dart';
import 'package:lucely/pages/homes/home_page.dart';
import 'package:lucely/pages/homes/profile_page.dart';
import 'package:lucely/theme.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget customBottomNav() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: BottomNavigationBar(
            elevation: 0,
            selectedFontSize: 0,
            backgroundColor: primaryColor,
            type: BottomNavigationBarType.fixed,
            currentIndex: currentIndex,
            onTap: (value) {
              // ignore: avoid_print
              // print(currentIndex);
              setState(() {
                currentIndex = value;
              });
            },
            selectedItemColor: backgroundColor,
            items: [
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  child: Image.asset(
                    'assets/images/home_icon.png',
                    width: 24,
                    color: currentIndex == 0 ? primaryColor : backgroundColor,
                  ),
                  decoration: BoxDecoration(
                    color: currentIndex == 0 ? backgroundColor : primaryColor,
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  child: Image.asset(
                    'assets/images/book_icon.png',
                    width: 24,
                    color: currentIndex == 1 ? primaryColor : backgroundColor,
                  ),
                  decoration: BoxDecoration(
                    color: currentIndex == 1 ? backgroundColor : primaryColor,
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  child: Image.asset(
                    'assets/images/love_icon.png',
                    width: 24,
                    color: currentIndex == 2 ? primaryColor : backgroundColor,
                  ),
                  decoration: BoxDecoration(
                    color: currentIndex == 2 ? backgroundColor : primaryColor,
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  child: Image.asset(
                    'assets/images/user_icon.png',
                    width: 24,
                    color: currentIndex == 3 ? primaryColor : backgroundColor,
                  ),
                  decoration: BoxDecoration(
                    color: currentIndex == 3 ? backgroundColor : primaryColor,
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                label: '',
              ),
            ],
          ),
        ),
      );
    }

    Widget bodyPageMain() {
      switch (currentIndex) {
        case 0:
          return HomePage();
          break;

        case 1:
          return EducationPage();
          break;

        case 2:
          return FavoritePage();
          break;

        case 3:
          return ProfilePage();
          break;
        default:
          return HomePage();
      }
    }

    return Scaffold(
      backgroundColor: Colors.transparent,
      extendBody: true,
      bottomNavigationBar: customBottomNav(),
      body: bodyPageMain(),
    );
  }
}
