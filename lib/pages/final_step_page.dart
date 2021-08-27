import 'package:flutter/material.dart';
import 'package:shamo_apps/pages/theme.dart';

class FinalStepPage extends StatelessWidget {
  const FinalStepPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(top: 24),
        child: Center(
          child: Column(
            children: [
              Image.asset(
                'assets/step_3.png',
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
                'assets/congrats_anime.png',
                width: 300,
                height: 232,
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                'Congratulations!',
                style: titleText,
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                'You have successfully registered on the \napplication. Please verify your identity to \nstart investing.',
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
        margin: EdgeInsets.only(top: 120),
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
                  'Lets go',
                  style: textButton,
                ),
                style: TextButton.styleFrom(
                    backgroundColor: backgroundColor2,
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
