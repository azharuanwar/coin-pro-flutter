import 'package:flutter/material.dart';
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
            child: Image.asset(
          'assets/card.png',
          width: 327,
        )),
      );
    }

    return Scaffold(
      backgroundColor: primaryColor,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: defautlMargin),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [header(), card()],
          ),
        ),
      ),
    );
  }
}
