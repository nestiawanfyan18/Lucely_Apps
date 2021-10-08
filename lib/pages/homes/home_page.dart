import 'package:flutter/material.dart';
import 'package:lucely/theme.dart';
import 'package:lucely/component.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  static const List<SliderComponent> listAktivitas = [
    SliderComponent(
        imageUrl: "assets/images/konsultasi.png", label: 'Konsultasi'),
    SliderComponent(imageUrl: 'assets/images/education.png', label: 'Edukasi'),
    SliderComponent(
        imageUrl: 'assets/images/mood_tracker.png', label: 'Mood Tracker'),
  ];

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.symmetric(vertical: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Image.asset(
                'assets/images/logo.png',
                width: 85,
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 5,
              ),
              padding: EdgeInsets.all(12),
              child: Image.asset(
                "assets/images/alert_icon.png",
                width: 16,
              ),
              decoration: BoxDecoration(
                color: alertColor,
                borderRadius: BorderRadius.circular(100),
              ),
            )
          ],
        ),
      );
    }

    Widget selamatDatangUser() {
      return Container(
        margin: EdgeInsets.symmetric(vertical: defaultMargin),
        child: Row(
          children: [
            Container(
              width: 67,
              height: 67,
              margin: EdgeInsets.only(right: 15),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: new DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/images/man.jpg'),
                ),
              ),
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Haloo, Samuel",
                    style: primaryTextStyle.copyWith(
                      fontWeight: semibold,
                      fontSize: 27,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(
                      vertical: 5,
                    ),
                    child: Text(
                      'Selamat Datang Kembali',
                      style: primaryTextStyle.copyWith(
                        fontSize: 12,
                        fontWeight: regular,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      );
    }

    Widget aktivitas() {
      return Container(
        margin: EdgeInsets.symmetric(
          vertical: 10,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                'Mulai Beraktivitas',
                style: primaryTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: semibold,
                ),
              ),
            ),
            // card Aktivitas
            SliderBox(
              listItems: listAktivitas,
            ),
          ],
        ),
      );
    }

    Widget kondisiPsikologi() {
      return Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: backgroundCardColor,
          border: Border.all(color: backgroundFormColor, width: .6),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Text(
                'Yukk. Mulai untuk periksa kondisi psikologi kamu.',
                style: primaryTextStyle.copyWith(
                  fontSize: 12,
                  fontWeight: medium,
                ),
              ),
            ),
            Container(
              height: 37,
              margin: EdgeInsets.symmetric(vertical: 10),
              child: TextButton(
                onPressed: () {},
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    'Periksa Sekarang',
                    style: thiridTextStyle.copyWith(
                      fontSize: 12,
                      fontWeight: semibold,
                    ),
                  ),
                ),
                style: TextButton.styleFrom(
                  backgroundColor: primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget historyActivity() {
      return Container(
        margin: EdgeInsets.symmetric(
          vertical: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.symmetric(
                vertical: 10,
              ),
              child: Text(
                'Lanjutkan Kegiatan kamu saat ini.',
                style: primaryTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: semibold,
                ),
              ),
            ),

            // card history
            CustomCard(
              imageUrl: 'assets/images/img_education-2.png',
              title: "Lanjutkan Edukasi Kamu",
              subtitle: 'Edukasi Mental - Chapter 13',
              route: '#',
              color: primaryColor,
            ),

            Container(
              margin: EdgeInsets.only(
                bottom: 10,
              ),
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    margin: EdgeInsets.only(right: 15),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: new DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/images/img_education-2.png'),
                      ),
                    ),
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Konsultasi Rutinan",
                          style: thiridTextStyle.copyWith(
                            fontWeight: semibold,
                            fontSize: 14,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(
                            vertical: 3,
                          ),
                          child: Text(
                            'Dr. Siskarum Lestari - 3x',
                            style: thiridTextStyle.copyWith(
                              fontSize: 12,
                              fontWeight: regular,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        toolbarHeight: 75,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Image.asset(
          'assets/images/logo.png',
          width: 85,
        ),
        actions: [
          Container(
            width: 45,
            height: 50,
            margin: EdgeInsets.symmetric(
              vertical: 15,
              horizontal: 15,
            ),
            padding: EdgeInsets.all(6),
            child: IconButton(
              onPressed: () {},
              icon: Image.asset(
                "assets/images/alert_icon.png",
                width: 30,
              ),
            ),
            decoration: BoxDecoration(
              color: alertColor,
              borderRadius: BorderRadius.circular(100),
            ),
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        child: ListView(
          children: [
            // header(),
            selamatDatangUser(),
            aktivitas(),
            kondisiPsikologi(),
            historyActivity(),
          ],
        ),
      ),
    );
  }
}
