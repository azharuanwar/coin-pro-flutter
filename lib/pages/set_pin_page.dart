import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shamo_apps/pages/theme.dart';

class SetPinpage extends StatelessWidget {
  const SetPinpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(top: 24),
        child: Center(
          child: Column(
            children: [
              Image.asset(
                'assets/step_2.png',
                width: 200,
                height: 4,
              ),
              SizedBox(
                height: 48,
              ),
              Text(
                'Set Your PIN',
                style:
                    GoogleFonts.lato(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 18,
              ),
              Text(
                'Set your PIN, this PIN is used every time you \nenter the application.',
                style: GoogleFonts.lato(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff94959B),
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      );
    }

    Widget inputPin() {
      return Container(
        margin: EdgeInsets.only(top: 48),
        child: Column(
          children: [
            Container(
              height: 56,
              padding: EdgeInsets.symmetric(horizontal: 24),
              decoration: BoxDecoration(
                  color: backgroundColor1,
                  borderRadius: BorderRadius.circular(16)),
              child: Center(
                child: Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        obscureText: true,
                        decoration: InputDecoration.collapsed(hintText: 'PIN'),
                      ),
                    ),
                    Image.asset(
                      'assets/eye.png',
                      width: 24,
                      height: 24,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 32,
            ),
            Container(
              height: 56,
              padding: EdgeInsets.symmetric(horizontal: 24),
              decoration: BoxDecoration(
                  color: backgroundColor1,
                  borderRadius: BorderRadius.circular(16)),
              child: Center(
                child: Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        obscureText: true,
                        decoration: InputDecoration.collapsed(
                            hintText: 'PIN Confirmation'),
                      ),
                    ),
                    Image.asset(
                      'assets/eye.png',
                      width: 24,
                      height: 24,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget buttonSession() {
      return Container(
        margin: EdgeInsets.only(top: 217),
        child: Column(
          children: [
            Container(
              height: 56,
              width: double.infinity,
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/FinalStepPage');
                },
                child: Text(
                  'Continue',
                  style: textButton,
                ),
                style: TextButton.styleFrom(
                    backgroundColor: backgroundColor2,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12))),
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Container(
              height: 56,
              width: double.infinity,
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Skip',
                  style: GoogleFonts.lato(
                    fontSize: 18,
                    color: Color(0xff222222),
                  ),
                ),
                style: TextButton.styleFrom(
                    backgroundColor: Color(0xffFBFBFB),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12))),
              ),
            ),
          ],
        ),
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
            children: [header(), inputPin(), buttonSession()],
          ),
        ),
      ),
    );
  }
}
