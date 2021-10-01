import 'package:flutter/material.dart';
import 'package:lucely/theme.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
      required this.route})
      : super(key: key);

  final Color color;
  final String text;
  final BuildContext? context;
  final String route;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      margin: EdgeInsets.only(top: 30),
      child: TextButton(
        onPressed: () {
          Navigator.pushReplacementNamed(context, route);
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
      ),
    );
  }
}
