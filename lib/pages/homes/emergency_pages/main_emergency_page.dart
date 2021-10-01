import 'package:flutter/material.dart';
import 'package:lucely/component.dart';
import 'package:lucely/theme.dart';

class EmergencyPage extends StatelessWidget {
  const EmergencyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget alamatMaps() {
      return Container(
        margin: EdgeInsets.symmetric(vertical: 20),
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
        toolbarHeight: 75,
        backgroundColor: backgroundColor,
        elevation: 0,
        title: Text(
          "Emergency",
          style: primaryTextStyle.copyWith(fontSize: 20, fontWeight: medium),
        ),
        leading: IconButtonBackApps(),
      ),
      body: GestureDetector(
        onTap: () {
          FocusScopeNode currentFocus = FocusScope.of(context);

          if (!currentFocus.hasPrimaryFocus) {
            currentFocus.unfocus();
          }
        },
        child: SizedBox.expand(
          child: Stack(
            children: [
              Container(
                color: Colors.purple,
                child: Center(
                  child: Text('Bagian Maps'),
                ),
              ),

              // draggable
              SizedBox.expand(
                child: DraggableScrollableSheet(
                  initialChildSize: 0.60,
                  minChildSize: 0.60,
                  maxChildSize: 0.80,
                  builder: (BuildContext c, s) {
                    return Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 15,
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
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: defaultMargin),
                        child: ListView(
                          controller: s,
                          children: [
                            Center(
                              child: Container(
                                margin: EdgeInsets.only(
                                  bottom: 10,
                                ),
                                width: 140,
                                height: 7,
                                decoration: BoxDecoration(
                                  color: Color(0xFFEAEAEA),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),

                            // form emergency
                            alamatMaps(),
                            TextContainer(
                              label: 'Alamat Lainnya',
                              isPassword: false,
                              placeholder:
                                  'Isikan Alamat Lainnya seperti, no rumah, no RT/RW, warna rumah, nama jalan dan lainnya sebagai pendukung.',
                              maxLinesForm: 30,
                              containerHeight: 120,
                            ),
                            TextContainer(
                              label: 'Kondisi Yang Terjadi',
                              isPassword: false,
                              placeholder:
                                  'Ceritakan Kondisi yang sedang dialaminya. seperti sering bersedih, menyakiti dirinya sendiri, berteriak-teriak, dan lainnya.',
                              maxLinesForm: 30,
                              containerHeight: 220,
                            ),
                            RegularButton(
                              text: 'Ajukan bantuan',
                              color: primaryColor,
                              route: '/emergency-search-psikologi',
                              replacePage: true,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
