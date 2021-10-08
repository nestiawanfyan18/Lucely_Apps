import 'package:flutter/material.dart';
import 'package:lucely/theme.dart';

import '../../component.dart';

class EducationPage extends StatelessWidget {
  const EducationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // Widget
    Widget header() {
      return Container(
        margin: EdgeInsets.symmetric(
          vertical: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Temukan sesuatu yang menarik untuk kebahagianmu",
              style: primaryTextStyle.copyWith(
                fontWeight: bold,
                fontSize: 23,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(
                vertical: 10,
              ),
              alignment: Alignment.topLeft,
              width: 80,
              height: 4,
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ],
        ),
      );
    }

    Widget aktivitas() {
      List<SliderComponent> aktivitasEdukasi = [
        SliderComponent(
          images: 'assets/images/konsultasi.png',
          title: 'Komik',
        ),
        // fiture 2
        SliderComponent(
          images: 'assets/images/konsultasi.png',
          title: 'Artikel',
        ),
        // fiture 3
        SliderComponent(
          images: 'assets/images/konsultasi.png',
          title: 'PodCast',
        ),
      ];
      return Container(
        margin: EdgeInsets.symmetric(
          vertical: 0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                'Cari kegiatan yang ingin kamu lakukan.',
                style: primaryTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: semibold,
                ),
              ),
            ),

            // card Aktivitas
            SizedBox(
              height: 147,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  Row(
                    children: [SliderBox(listItems: aktivitasEdukasi)],
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget listKomik() {
      return Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(
                top: 20,
                bottom: 15,
              ),
              child: Text(
                'Komik yang mungkin kamu suka',
                style: primaryTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: semibold,
                ),
              ),
            ),
            Wrap(
              children: [
                ListKomik(
                  image: 'assets/images/img_depresion.png',
                  title: 'Sahabat Sejati',
                ),
                ListKomik(
                  image: 'assets/images/konsultasi.png',
                  title: 'Sahabat Sejati',
                ),
                ListKomik(
                  image: 'assets/images/img_depresion.png',
                  title: 'Sahabat Sejati',
                ),
                ListKomik(
                  image: 'assets/images/konsultasi.png',
                  title: 'Sahabat Sejati',
                ),
                ListKomik(
                  image: 'assets/images/img_depresion.png',
                  title: 'Sahabat Sejati',
                ),
                ListKomik(
                  image: 'assets/images/konsultasi.png',
                  title: 'Sahabat Sejati',
                ),
              ],
            )
          ],
        ),
      );
    }

    Widget article() {
      List<CardArticle> listArticle = [];
      CardArticle example = CardArticle(
        imgProfile: 'assets/images/man.jpg',
        nameUser: 'Nestiawan Ferdiyanto',
        bioUser: 'Hidup Lebih Baik',
        imgCover: 'assets/images/img_depresion.png',
        titleArticle:
            'Cara untuk Meredakan emosi ketika dalam kondisi yang tidak kondusif ',
        dateArticle: '2 Minggu yang lalu',
      );
      for (int i = 0; i < 5; i++) {
        listArticle.add(example);
      }
      return Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(
                top: 20,
                bottom: 15,
              ),
              child: Text(
                'Artikel yang mungkin kamu suka',
                style: primaryTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: semibold,
                ),
              ),
            ),
            Column(
              children: listArticle,
            )
            // article,
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: appBarHeight,
        title: Text(
          "Education",
          style: primaryTextStyle.copyWith(
            fontWeight: semibold,
            fontSize: 18,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        // leading: IconButtonBackApps(route: '/home'),
        actions: [
          EmergencyButtonAppbar(),
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        child: ListView(
          children: [
            header(),
            aktivitas(),
            listKomik(),
            article(),
            Wrap(
              children: [
                // cardEducation(),
                // cardEducation(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
