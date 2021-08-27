import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shamo_apps/pages/theme.dart';

class VerifyEmail extends StatelessWidget {
  const VerifyEmail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(top: 24),
        child: Center(
          child: Column(
            children: [
              Image.asset(
                'assets/step_1.png',
                width: 200,
                height: 4,
              ),
            ],
          ),
        ),
      );
    }

    Widget bodyPic() {
      return Container(
        margin: EdgeInsets.only(top: 72),
        child: Center(
          child: Column(
            children: [
              Image.asset(
                'assets/email_anime.png',
                width: 300,
                height: 232,
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                'Verify your email',
                style: titleText,
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                'We sent a verification code to your email. \nPlease tap the link inside that email to \ncontinue.',
                style: subtitleText,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      );
    }

    Widget buttonSession() {
      return Container(
        margin: EdgeInsets.only(top: 116),
        child: Column(
          children: [
            Container(
              height: 56,
              width: double.infinity,
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/SetPinPage');
                },
                child: Text(
                  'Check My Inbox',
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
                  'Resend Email',
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
            children: [
              header(),
              bodyPic(),
              buttonSession(),
            ],
          ),
        ),
      ),
    );
  }
}
