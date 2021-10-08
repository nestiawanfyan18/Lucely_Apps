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
    required this.imageUrl,
    required this.label,
  }) : super(key: key);

  final String imageUrl;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Column(
        children: [
          Container(
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
                image: AssetImage(imageUrl),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(
              vertical: 10,
            ),
            child: Text(
              label,
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
