import 'package:flutter/material.dart';
import 'package:lucely/theme.dart';

import '../../component.dart';

class EducationPage extends StatelessWidget {
  const EducationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Widget
    Widget header() {
      return Container(
        margin: EdgeInsets.symmetric(
          vertical: 20,
        ),
        child: Column(
          children: [
            Text(
              "Mulai Buat harimu Lebih Menyenangkan",
              style: primaryTextStyle.copyWith(
                fontWeight: bold,
                fontSize: 27,
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
        route: '/listEducation');

    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
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
        leading: IconButtonBackApps(route: '/home'),
        actions: [
          Container(
            width: 45,
            height: 50,
            margin: EdgeInsets.symmetric(
              vertical: 15,
              horizontal: 15,
            ),
            padding: EdgeInsets.all(5),
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
            header(),
            Wrap(
              children: [
                cardEducation(),
                cardEducation(),
                cardEducation(),
                cardEducation(),
                cardEducation(),
                cardEducation(),
                cardEducation(),
                cardEducation(),
                cardEducation(),
                cardEducation(),
              ],
            )
          ],
        ),
      ),
    );
  }
}

// component
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
    return Container(
      width: 155,
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
              width: 155,
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
