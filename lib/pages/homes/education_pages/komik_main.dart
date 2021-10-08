import 'package:flutter/material.dart';
import 'package:lucely/theme.dart';

import 'package:lucely/component.dart';

class KomikMainPage extends StatelessWidget {
  const KomikMainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget recommended() {
      return Container(
        child: CardEducation(
            images: 'assets/images/Artikel/pengembangan_diri.jpg',
            title: 'test',
            tag: '#123',
            date: '123123',
            route: '/home'),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: appBarHeight,
        title: Text(
          "Komik",
          style: primaryTextStyle.copyWith(
            fontWeight: semibold,
            fontSize: 18,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        actions: [
          EmergencyButtonAppbar(),
        ],
      ),
      body: Column(
        children: [
          recommended(),
        ],
      ),
    );
  }
}
