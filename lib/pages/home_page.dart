import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shamo_apps/pages/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(top: 24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Have you invested \ntoday?',
              style: titleText,
            ),
            SizedBox(
              width: 40,
            ),
            Image.asset(
              'assets/search.png',
              width: 24,
              height: 24,
            ),
            SizedBox(
              width: 24,
            ),
            Image.asset(
              'assets/scan.png',
              width: 24,
              height: 24,
            ),
          ],
        ),
      );
    }

    Widget card() {
      return Container(
        margin: EdgeInsets.only(top: 32),
        child: Center(
          child: Container(
            height: 200,
            width: 327,
            // color: Color(0xff22222),
            child: Container(
              margin: EdgeInsets.only(top: 24, left: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Row(
                      children: [
                        Text(
                          'Your current balance',
                          style: cardText,
                        ),
                        SizedBox(
                          width: 90,
                        ),
                        Image.asset(
                          'assets/eye_white.png',
                          width: 24,
                          height: 24,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    '\$385,142',
                    style: GoogleFonts.lato(
                        fontSize: 24,
                        color: Color(0xffFFFFFF),
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  Container(
                    child: Row(
                      children: [
                        Container(
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/upload.png',
                                width: 24,
                                height: 24,
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                'Deposit',
                                style: cardText2,
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 53,
                        ),
                        Container(
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/download.png',
                                width: 24,
                                height: 24,
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                'Withdraw',
                                style: cardText2,
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 53,
                        ),
                        Container(
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/history.png',
                                width: 24,
                                height: 24,
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                'History',
                                style: cardText2,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                    const Color(0xff2972FF),
                    const Color(0xff8444D2),
                  ],
                  begin: const FractionalOffset(0.0, 0.0),
                  end: const FractionalOffset(1.0, 0.0),
                  stops: [0.0, 1.0],
                  tileMode: TileMode.clamp),
              borderRadius: BorderRadius.circular(30),
            ),
          ),
        ),
      );
    }

    Widget myPortfolio() {
      return Container(
        margin: EdgeInsets.only(top: 26),
        child: Column(
          children: [
            Container(
              child: Row(
                children: [
                  Text(
                    'My Portfolio',
                    style: categoryText,
                  ),
                  SizedBox(
                    width: 160,
                  ),
                  Text(
                    'See all',
                    style: GoogleFonts.lato(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff2972FF)),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 24,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: EdgeInsets.only(left: 24),
                child: Row(
                  children: [
                    Container(
                      width: 236,
                      height: 147,
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  'assets/bnb.png',
                                  width: 36,
                                  height: 36,
                                ),
                                SizedBox(
                                  width: 12,
                                ),
                                Text(
                                  'BNB/USD',
                                  style: categoryText,
                                )
                              ],
                            ),
                            SizedBox(
                              height: 32,
                            ),
                            Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '\$47.99',
                                      style: totalPortofolio,
                                    ),
                                    Text(
                                      'BNB 0.095203',
                                      style: priceCoin,
                                    )
                                  ],
                                ),
                                // Image.asset(
                                //   'assets/graph_2.png',
                                //   width: 10,
                                //   height: 10,
                                // )
                              ],
                            ),
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(25))),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor3,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: defautlMargin),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [header(), card(), myPortfolio()],
          ),
        ),
      ),
    );
  }
}
