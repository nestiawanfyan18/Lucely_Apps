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
      required this.isPassword})
      : super(key: key);

  final String label;
  final String? placeholder;
  final String? imageUrl;
  final double? containerHeight;
  final double? topMargin;
  final bool isPassword;

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
            padding: EdgeInsets.symmetric(horizontal: 16),
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
      required this.contextParent,
      required this.route})
      : super(key: key);

  final Color color;
  final String text;
  final BuildContext contextParent;
  final String route;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      margin: EdgeInsets.only(top: 30),
      child: TextButton(
        onPressed: () {
          Navigator.pushReplacementNamed(contextParent, route);
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
