import 'package:flutter/material.dart';
import 'package:lucely/theme.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:latlong2/latlong.dart' as latLng;
import 'package:flutter_map/flutter_map.dart';

class TextContainer extends StatelessWidget {
  TextContainer(
      {Key? key,
      required this.label,
      this.placeholder,
      this.imageUrl,
      this.containerHeight,
      this.topMargin,
      this.maxLinesForm = 1,
      required this.isPassword})
      : super(key: key);

  final String label;
  final String? placeholder;
  final String? imageUrl;
  final double? containerHeight;
  final double? topMargin;
  final bool isPassword;
  final int? maxLinesForm;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          top: (topMargin == null) ? 20.0 : topMargin!.toDouble()),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // label
          Container(
            margin: EdgeInsets.only(bottom: 12),
            child: Text(
              label.toString(),
              style: primaryTextStyle.copyWith(
                fontWeight: semibold,
                fontSize: 16,
                letterSpacing: .3,
              ),
            ),
          ),

          Container(
            height:
                (containerHeight != null) ? containerHeight?.toDouble() : 50,
            padding: EdgeInsets.symmetric(
              horizontal: 16,
              vertical: (maxLinesForm == 1) ? 0 : 12,
            ),
            decoration: BoxDecoration(
              color: backgroundFormColor,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center(
              child: Row(
                children: [
                  (imageUrl == null)
                      ? Container()
                      : Container(
                          margin: EdgeInsets.only(right: 16),
                          child: Image.asset(
                            imageUrl.toString(),
                            width: 17,
                          ),
                        ),
                  Expanded(
                    child: TextFormField(
                      // (maxLines != null)
                      maxLines: maxLinesForm,
                      style: primaryTextStyle,
                      obscureText: isPassword,
                      decoration: InputDecoration.collapsed(
                        hintText: placeholder,
                        hintStyle: secondaryTextStyle,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class RegularButton extends StatelessWidget {
  RegularButton(
      {Key? key,
      required this.color,
      required this.text,
      this.context,
      this.replacePage = false,
      required this.route})
      : super(key: key);

  final Color color;
  final String text;
  final BuildContext? context;
  final String route;
  final bool replacePage;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      margin: EdgeInsets.only(top: 30),
      child: TextButton(
        onPressed: () {
          (replacePage == true)
              ? Navigator.pushReplacementNamed(context, route)
              : Navigator.pushNamed(context, route);
        },
        child: Text(text,
            style: thiridTextStyle.copyWith(
              fontSize: 18,
              fontWeight: medium,
            )),
        style: TextButton.styleFrom(
            backgroundColor: color,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(7),
            )),
      ),
    );
  }
}

class IconButtonBackApps extends StatelessWidget {
  const IconButtonBackApps({
    Key? key,
    // required this.route,
  }) : super(key: key);

  // final String? route;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Image.asset(
        'assets/images/back_icon.png',
        width: 23,
        height: 23,
      ),
      onPressed: () {
        Navigator.pop(context);
      },
    );
  }
}

class SliderComponent extends StatelessWidget {
  const SliderComponent({
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
                    Radius.circular(15),
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

class SliderBox extends StatelessWidget {
  const SliderBox({
    Key? key,
    required this.listItems,
  }) : super(key: key);

  final List<SliderComponent> listItems;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 147,
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: [
          Row(
            children: listItems,
          ),
        ],
      ),
    );
  }
}

class EmergencyButtonAppbar extends StatelessWidget {
  const EmergencyButtonAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 45,
        height: 50,
        margin: EdgeInsets.symmetric(
          vertical: 15,
          horizontal: 15,
        ),
        padding: EdgeInsets.all(6),
        child: IconButton(
          onPressed: () {
            Navigator.pushNamed(context, '/emergency');
          },
          icon: Image.asset(
            "assets/images/alert_icon.png",
            width: 30,
          ),
        ),
        decoration: BoxDecoration(
          color: alertColor,
          borderRadius: BorderRadius.circular(100),
        ));
  }
}

class CustomCard extends StatelessWidget {
  const CustomCard({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.subtitle,
    required this.route,
    required this.color,
  }) : super(key: key);

  final String imageUrl;
  final String title;
  final String subtitle;
  final String route;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 10,
      ),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: color,
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
                image: AssetImage(imageUrl),
              ),
            ),
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
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
                    subtitle,
                    style: thiridTextStyle.copyWith(
                      fontSize: 12,
                      fontWeight: regular,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image:
                      AssetImage('assets/images/akar-icons_chevron-right.png'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Maps

class MapsEmergency extends StatelessWidget {
  const MapsEmergency({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlutterMap(
      options: MapOptions(
        center: latLng.LatLng(51.5, -0.09),
        // zoom: 13.0,
        maxZoom: 300,
        minZoom: 5,
        // interactiveFlags: InteractiveFlag.pinchZoom | InteractiveFlag.drag,
      ),
      layers: [
        TileLayerOptions(
            urlTemplate:
                "https://api.mapbox.com/styles/v1/nestiawanfyan/cku8nhs832kds17o4lcir58xe/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1IjoibmVzdGlhd2FuZnlhbiIsImEiOiJja3RwMGJhOGcwaHRqMnFvYWNrMDBjYnhqIn0.WWCPydef08kkqsv6grN6UA",
            // subdomains: ['a', 'b', 'c'],
            // attributionBuilder: (_) {
            //   return Text("© OpenStreetMap contributors");
            // },
            additionalOptions: {
              'accessToken':
                  'pk.eyJ1IjoibmVzdGlhd2FuZnlhbiIsImEiOiJja3RwMGJhOGcwaHRqMnFvYWNrMDBjYnhqIn0.WWCPydef08kkqsv6grN6UA',
              'id': 'mapbox.mapbox-streets-v8',
            }),
        MarkerLayerOptions(
          markers: [
            Marker(
              width: 80.0,
              height: 80.0,
              point: latLng.LatLng(51.5, -0.09),
              builder: (ctx) => Container(
                child: Text(''),
              ),
            ),
          ],
        ),
      ],
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
      width: size.width * 0.27,
      margin: EdgeInsets.symmetric(
        horizontal: 5,
        vertical: 5,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
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
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
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
