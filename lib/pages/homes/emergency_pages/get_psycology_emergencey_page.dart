import 'package:flutter/material.dart';
import 'package:lucely/component.dart';
import 'package:lucely/theme.dart';

class GetPsycologyEmergencyPage extends StatelessWidget {
  const GetPsycologyEmergencyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: backgroundColor,
        elevation: 0,
        title: Text(
          'Emergency',
          style: primaryTextStyle.copyWith(
            fontSize: 18,
            fontWeight: semibold,
          ),
        ),
      ),
      body: SizedBox.expand(
        child: Stack(
          children: [
            Container(
              color: backgroundFormColor,
            ),
            SizedBox.expand(
              child: DraggableScrollableSheet(
                initialChildSize: 0.70,
                minChildSize: 0.65,
                maxChildSize: 0.90,
                builder: (BuildContext c, s) {
                  return Container(
                    padding: EdgeInsets.symmetric(
                      vertical: defaultMargin,
                      horizontal: defaultMargin,
                    ),
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
                            margin: EdgeInsets.only(
                              bottom: 20,
                            ),
                            width: 140,
                            height: 6,
                            decoration: BoxDecoration(
                              color: Color(0xFFEAEAEA),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
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
