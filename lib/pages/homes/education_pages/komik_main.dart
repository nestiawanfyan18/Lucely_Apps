import 'package:flutter/material.dart';
import 'package:lucely/theme.dart';

import 'package:lucely/component.dart';

class KomikMainPage extends StatelessWidget {
  const KomikMainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget recommended() {
      List<RecommendedKomik> listRecommended = [
        RecommendedKomik(
          image:
              'assets/images/cover_comic/Jepretan Layar 2021-06-26 pada 10.48.40.png',
          emphasis: 'Top 1',
          title: 'Bertarung Dengan Diri Sendiri',
        ),
        RecommendedKomik(
          image:
              'assets/images/cover_comic/Jepretan Layar 2021-06-26 pada 10.48.40.png',
          emphasis: 'Top 1',
          title: 'Bertarung Dengan Diri Sendiri',
        ),
        RecommendedKomik(
          image:
              'assets/images/cover_comic/Jepretan Layar 2021-06-26 pada 10.48.40.png',
          emphasis: 'Top 1',
          title: 'Bertarung Dengan Diri Sendiri',
        ),
      ];
      return SizedBox(
        height: 200.0,
        child: RecommendedKomikList(
          listRecommended: listRecommended,
        ),
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
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        child: ListView(
          children: [recommended()],
        ),
      ),
    );
  }
}
