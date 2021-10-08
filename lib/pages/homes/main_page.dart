import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_statusbarcolor_ns/flutter_statusbarcolor_ns.dart';
import 'package:lucely/pages/homes/education_page.dart';
import 'package:lucely/pages/homes/favorite_page.dart';
import 'package:lucely/pages/homes/home_page.dart';
import 'package:lucely/pages/homes/profile_page.dart';
import 'package:lucely/theme.dart';
import 'package:flutter/rendering.dart';

class MainPage extends StatefulWidget {
  MainPage({
    Key? key,
    this.indexPages,
  }) : super(key: key);

  int? indexPages;
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarColor(Color(0xFFE9E9E9));

    (widget.indexPages != null)
        ? currentIndex = widget.indexPages!
        : currentIndex;

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
              print(currentIndex);
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
                    color: (currentIndex == 0 || widget.indexPages == 0)
                        ? primaryColor
                        : backgroundColor,
                  ),
                  decoration: BoxDecoration(
                    color: (currentIndex == 0 || widget.indexPages == 0)
                        ? backgroundColor
                        : primaryColor,
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
                    color: (currentIndex == 1 || widget.indexPages == 1)
                        ? primaryColor
                        : backgroundColor,
                  ),
                  decoration: BoxDecoration(
                    color: (currentIndex == 1 || widget.indexPages == 1)
                        ? backgroundColor
                        : primaryColor,
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
                    color: (currentIndex == 2 || widget.indexPages == 2)
                        ? primaryColor
                        : backgroundColor,
                  ),
                  decoration: BoxDecoration(
                    color: (currentIndex == 2 || widget.indexPages == 2)
                        ? backgroundColor
                        : primaryColor,
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
                    color: (currentIndex == 3 || widget.indexPages == 3)
                        ? primaryColor
                        : backgroundColor,
                  ),
                  decoration: BoxDecoration(
                    color: (currentIndex == 3 || widget.indexPages == 3)
                        ? backgroundColor
                        : primaryColor,
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

    Widget bodyPageMainParam() {
      switch ((widget.indexPages == null) ? currentIndex : widget.indexPages) {
        case 0:
          currentIndex = 0;
          widget.indexPages = null;
          return HomePage();
          break;

        case 1:
          currentIndex = 1;
          widget.indexPages = null;
          return EducationPage();
          break;

        case 2:
          currentIndex = 2;
          widget.indexPages = null;
          return FavoritePage();
          break;

        case 3:
          currentIndex = 3;
          widget.indexPages = null;
          return ProfilePage();
          break;
        default:
          currentIndex = 0;
          widget.indexPages = null;
          return HomePage();
      }
    }

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        extendBody: true,
        bottomNavigationBar: Container(
          child: customBottomNav(),
          decoration: BoxDecoration(
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: Color(0xFFF9F9F9).withOpacity(.3),
                blurRadius: 100,
              ),
            ],
          ),
        ),
        body: bodyPageMainParam(),
      ),
    );
  }
}
