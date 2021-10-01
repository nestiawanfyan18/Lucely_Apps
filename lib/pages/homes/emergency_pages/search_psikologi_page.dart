import 'package:flutter/material.dart';
import 'package:lucely/component.dart';
import 'package:lucely/theme.dart';

class SearchPsikologiEmergencyPage extends StatelessWidget {
  const SearchPsikologiEmergencyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    Widget alamatMaps() {
      return Container(
        margin: EdgeInsets.only(
          top: 20,
          bottom: 5,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Text(
                'Alamat',
                style: primaryTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: semibold,
                ),
              ),
            ),
            Container(
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      top: 5,
                      right: 5,
                    ),
                    width: 20,
                    height: 20,
                    child: Image.asset('assets/images/location_icon.png'),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      top: 5,
                    ),
                    child: Text(
                      'Noe Valley - San Francisco',
                      style: primaryTextStyle.copyWith(
                        fontSize: 14,
                        fontWeight: medium,
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

    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 75,
        elevation: 0,
        backgroundColor: backgroundColor,
        title: Text(
          "Emergency - Mencari Psikologi",
          style: primaryTextStyle.copyWith(
            fontSize: 18,
            fontWeight: medium,
          ),
        ),
      ),
      body: SizedBox.expand(
        child: Stack(
          children: [
            Container(
              height: size.height * 0.65,
              color: backgroundFormColor,
              child: MapsEmergency(),
            ),
            SizedBox(
              child: DraggableScrollableSheet(
                initialChildSize: 0.45,
                minChildSize: 0.45,
                maxChildSize: 0.5,
                builder: (BuildContext c, s) {
                  return Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: defaultMargin,
                      vertical: defaultMargin,
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
                        )
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

                        // status Searching
                        Container(
                          margin: EdgeInsets.symmetric(
                            vertical: 02,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.only(
                                  bottom: 5,
                                ),
                                child: Text(
                                  'Sedang Mencari Bantuan...',
                                  style: secondaryTextStyle.copyWith(
                                    fontSize: 12,
                                    fontWeight: medium,
                                  ),
                                ),
                              ),
                              Container(
                                child: Text(
                                  'Tunggu Sebentar ya, Kami Sedang Mencarikanmu Pakar Psikolog',
                                  style: primaryTextStyle.copyWith(
                                    fontSize: 18,
                                    fontWeight: bold,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        alamatMaps(),
                        RegularButton(
                          text: 'Batalkan Permintaan',
                          color: alertColor,
                          route: '/emergency',
                          replacePage: true,
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
