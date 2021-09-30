import 'package:flutter/material.dart';
import 'package:lucely/component.dart';
import 'package:lucely/theme.dart';

class ListEducationPage extends StatelessWidget {
  const ListEducationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        toolbarHeight: appBarHeight,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "Penting Kesehatan mental",
          style: primaryTextStyle.copyWith(
            fontWeight: semibold,
            fontSize: 16,
          ),
        ),
        leading: IconButtonBackApps(route: '/education'),
      ),
      body: SizedBox.expand(
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: 300,
              child: Image.asset("assets/images/img_depresion.png"),
            ),
            SizedBox.expand(
              child: DraggableScrollableSheet(
                initialChildSize: 0.75,
                minChildSize: 0.70,
                maxChildSize: 0.98,
                builder: (BuildContext c, s) {
                  return Container(
                    padding: EdgeInsets.symmetric(
                        vertical: defaultMargin, horizontal: defaultMargin),
                    decoration: BoxDecoration(
                      color: backgroundColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 15.0,
                        ),
                      ],
                    ),
                    child: ListView(
                      controller: s,
                      children: [
                        Center(
                          child: Container(
                            width: 120,
                            height: 6,
                            decoration: BoxDecoration(
                              color: Color(0xFFEAEAEA),
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),

                        // title
                        Container(
                          margin: EdgeInsets.symmetric(
                            vertical: 10,
                          ),
                          child: Text(
                            "Pentingnya Kesehatan Mental",
                            style: primaryTextStyle.copyWith(
                              fontSize: 25,
                              fontWeight: bold,
                            ),
                          ),
                        ),

                        // description
                        Container(
                          child: Text(
                            'Perjalanan yang akan membawa kamu dalam kebahagian, pertamaian, dan kesejahteraan',
                            style: secondaryTextStyle.copyWith(
                                fontSize: 13, fontWeight: regular),
                          ),
                        ),

                        // items Chapter
                        ItemChapter(
                          title: "Awalan yang menyakitkan",
                          tagEducation: "Edukasi Mental",
                          numberChaper: 1,
                          route: '/home',
                        ),
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ItemChapter extends StatelessWidget {
  const ItemChapter({
    Key? key,
    required this.title,
    required this.tagEducation,
    required this.numberChaper,
    required this.route,
  }) : super(key: key);

  final String title;
  final String tagEducation;
  final int numberChaper;
  final String route;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(
        vertical: 20,
      ),
      padding: EdgeInsets.symmetric(
        vertical: 15,
        horizontal: 20,
      ),
      child: Row(
        children: [],
      ),
      decoration: BoxDecoration(
        color: backgroundCardColor,
        border: Border.all(
          width: .6,
          color: secondaryTextColor,
        ),
        borderRadius: BorderRadius.circular(7),
      ),
    );
  }
}
