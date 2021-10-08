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
                    children: [
                      // fiture 1
                      EducationCategory(
                        images:
                            'assets/images/cover_comic/Manhua-Like-Apotheosis.jpg',
                        title: 'Komik',
                      ),
                      // fiture 2
                      EducationCategory(
                        images: 'assets/images/Artikel/Mengurangi_Stress.jpg',
                        title: 'Artikel',
                      ),
                      // fiture 3
                      EducationCategory(
                        images:
                            'assets/images/PodCast/img-profile-podcast.jpeg',
                        title: 'Podcast',
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget cardEducation() => CardEducation(
          images: 'assets/images/img_depresion.png',
          title: 'Pentingnya Kesehatan Mental',
          tag: '#Mental',
          date: '17 Agustus 2021',
          route: '/listEducation',
        );

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
                  image: 'assets/images/cover_comic/Cover_Komik_1.jpg',
                  title: 'Solo Leveling',
                ),
                ListKomik(
                  image: 'assets/images/cover_comic/Cover_Komik_2.jpg',
                  title: 'Log Horizon',
                ),
                ListKomik(
                  image: 'assets/images/cover_comic/Cover_Komik_3.jpg',
                  title: 'Black Clover',
                ),
                ListKomik(
                  image: 'assets/images/cover_comic/Cover_Komik_4.jpg',
                  title: 'i\'m An Evil God ',
                ),
                ListKomik(
                  image: 'assets/images/cover_comic/Cover_Komik_5.png',
                  title: 'Reon And Friends',
                ),
                ListKomik(
                  image: 'assets/images/cover_comic/Cover_Komik_7.jpg',
                  title: '339 Year In Prison ',
                ),
              ],
            )
          ],
        ),
      );
    }

    Widget article() {
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
            CardArticle(
              imgProfile: 'assets/images/man.jpg',
              nameUser: 'Nestiawan Ferdiyanto',
              bioUser: 'Hidup Lebih Baik',
              imgCover: 'assets/images/Artikel/Pengendalian_Emosi.png',
              titleArticle:
                  'Cara untuk Meredakan emosi ketika dalam kondisi yang tidak kondusif ',
              dateArticle: '2 Minggu yang lalu',
            ),

            CardArticle(
              imgProfile: 'assets/images/man.jpg',
              nameUser: 'Nestiawan Ferdiyanto',
              bioUser: 'Hidup Lebih Baik',
              imgCover: 'assets/images/Artikel/Meredakan_Cemas.jpg',
              titleArticle:
                  'Cara untuk Meredakan emosi ketika dalam kondisi yang tidak kondusif ',
              dateArticle: '2 Minggu yang lalu',
            ),

            CardArticle(
              imgProfile: 'assets/images/man.jpg',
              nameUser: 'Nestiawan Ferdiyanto',
              bioUser: 'Hidup Lebih Baik',
              imgCover: 'assets/images/Artikel/Pengendalian_Emosi.png',
              titleArticle:
                  'Cara untuk Meredakan emosi ketika dalam kondisi yang tidak kondusif ',
              dateArticle: '2 Minggu yang lalu',
            ),
            // article,
          ],
        ),
      );
    }

    Widget podcast() {
      return Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.symmetric(
                vertical: 20,
              ),
              child: Text(
                'Podcast yang mungkin kamu suka',
                style: primaryTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: semibold,
                ),
              ),
            ),
            Wrap(
              children: [
                CardPodcast(
                  title: 'Pengembangan Diri',
                  imageCover: 'assets/images/Artikel/pengembangan_diri.jpg',
                ),
                CardPodcast(
                  title: 'Pengendalian Emosi',
                  imageCover: 'assets/images/Artikel/Pengendalian_Emosi.png',
                ),
                CardPodcast(
                  title: 'Meredakan Cemas',
                  imageCover: 'assets/images/Artikel/Meredakan_Cemas.jpg',
                ),
                CardPodcast(
                  title: 'Mengurangi Stress',
                  imageCover: 'assets/images/Artikel/Mengurangi_Stress.jpg',
                ),
                CardPodcast(
                  title: 'Pengembangan Diri',
                  imageCover: 'assets/images/Artikel/Meredakan_Cemas.jpg',
                ),
                CardPodcast(
                  title: 'Bahaya Pikiran Negatif',
                  imageCover: 'assets/images/Artikel/Pengendalian_Emosi.png',
                ),
              ],
            ),
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
            podcast(),
          ],
        ),
      ),
    );
  }
}

class CardPodcast extends StatelessWidget {
  const CardPodcast({
    Key? key,
    this.imageCover,
    required this.title,
    this.route,
  }) : super(key: key);

  final String? imageCover;
  final String title;
  final String? route;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {},
            child: Container(
              width: size.width * 0.28,
              height: 90,
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    imageCover.toString(),
                  ),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(
              vertical: 10,
            ),
            child: Text(
              title.toString(),
              style: primaryTextStyle.copyWith(
                fontSize: 10,
                fontWeight: medium,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ListKomik extends StatelessWidget {
  const ListKomik({
    Key? key,
    required this.image,
    required this.title,
    this.route,
  }) : super(key: key);

  final String image;
  final String title;
  final String? route;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 5,
        vertical: 5,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: size.width * 0.27,
            height: 150,
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(7),
              ),
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(image.toString()),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(
              vertical: 8,
              horizontal: 3,
            ),
            child: Text(
              title.toString(),
              style: primaryTextStyle.copyWith(
                fontSize: 10,
                fontWeight: bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}

// component

class CardArticle extends StatelessWidget {
  const CardArticle({
    Key? key,
    this.imgProfile,
    this.nameUser,
    this.bioUser,
    this.imgCover,
    required this.titleArticle,
    required this.dateArticle,
  }) : super(key: key);

  final String? imgProfile;
  final String? nameUser;
  final String? bioUser;
  final String? imgCover;
  final String titleArticle;
  final String dateArticle;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 40,
                height: 43,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7),
                  ),
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                        (imgProfile != null) ? imgProfile.toString() : ''),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(
                    left: 15,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Text(
                          nameUser.toString(),
                          style: primaryTextStyle.copyWith(
                            fontSize: 12,
                            fontWeight: semibold,
                          ),
                        ),
                      ),
                      Text(
                        bioUser.toString(),
                        style: secondaryTextStyle.copyWith(
                          fontSize: 11,
                          fontWeight: regular,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.symmetric(
              vertical: 15,
            ),
            child: Row(
              children: [
                Container(
                  width: 88,
                  height: 80,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7),
                    ),
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(
                        imgCover.toString(),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 65,
                    margin: EdgeInsets.only(
                      left: 15,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Text(
                            titleArticle.toString(),
                            style: primaryTextStyle.copyWith(
                              fontSize: 12,
                              fontWeight: bold,
                            ),
                          ),
                        ),
                        Container(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                dateArticle.toString(),
                                style: secondaryTextStyle.copyWith(
                                  fontSize: 10,
                                  fontWeight: medium,
                                ),
                              ),
                              Container(
                                width: 18,
                                height: 18,
                                child: Image.asset(
                                    'assets/images/favorite_icon.png'),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              bottom: 15,
            ),
            width: double.infinity,
            height: 2,
            decoration: BoxDecoration(
              color: backgroundFormColor,
              borderRadius: BorderRadius.circular(10),
            ),
          )
        ],
      ),
    );
  }
}

class CardEducation extends StatelessWidget {
  const CardEducation({
    Key? key,
    required this.images,
    required this.title,
    required this.tag,
    required this.date,
    required this.route,
  }) : super(key: key);

  final String images;
  final String title;
  final String tag;
  final String date;
  final String? route;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width * 0.39,
      margin: EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 5,
      ),
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, route.toString());
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // images card
            Container(
              width: double.infinity,
              height: 117,
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    images.toString(),
                  ),
                ),
              ),
            ),

            // tag Card
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 5,
                vertical: 5,
              ),
              child: Text(
                tag.toString(),
                style: primaryTextStyle.copyWith(
                  fontSize: 10,
                  fontWeight: medium,
                ),
              ),
            ),

            // title Card
            Container(
              padding: EdgeInsets.only(
                bottom: 5,
                left: 5,
                right: 5,
              ),
              child: Text(
                title.toString(),
                style: primaryTextStyle.copyWith(
                  fontSize: 12,
                  fontWeight: semibold,
                ),
              ),
            ),

            // date Card
            Container(
              padding: EdgeInsets.only(
                bottom: 5,
                left: 5,
                right: 5,
              ),
              child: Text(
                date.toString(),
                style: primaryTextStyle.copyWith(
                  fontSize: 10,
                  fontWeight: medium,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class EducationCategory extends StatelessWidget {
  const EducationCategory({
    Key? key,
    required this.images,
    required this.title,
    this.route,
  }) : super(key: key);

  final String images;
  final String title;
  final String? route;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              (route != null)
                  ? Navigator.pushNamed(context, route.toString())
                  : null;
            },
            child: Container(
              width: 110,
              height: 93,
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(images),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(
              vertical: 10,
            ),
            child: Text(
              title.toString(),
              style: primaryTextStyle.copyWith(
                fontSize: 11,
                fontWeight: medium,
              ),
            ),
          )
        ],
      ),
    );
  }
}
