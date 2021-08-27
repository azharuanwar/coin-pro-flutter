import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shamo_apps/pages/theme.dart';
// import 'package:email_validator/email_validator.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isChecked = false;
  String? email;
  // final isValid = EmailValidator.validate(email);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Login to your \naccount',
              style: textHeader,
            ),
            SizedBox(
              height: 20,
            ),
            Image.asset(
              'assets/line.png',
              height: 4,
              width: 99,
            )
          ],
        ),
      );
    }

    Widget inputEmail() {
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
                      decoration: InputDecoration.collapsed(hintText: 'Email'),
                    ))
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget rememberMe() {
      return Container(
        margin: EdgeInsets.only(top: 25),
        child: Row(
          children: [
            Checkbox(
                value: isChecked,
                onChanged: (bool? value) {
                  setState(() {
                    isChecked = value!;
                  });
                }),
            Text(
              'Remember Me',
              style: GoogleFonts.lato(fontSize: 16, color: Color(0xff222222)),
            ),
          ],
        ),
      );
    }

    Widget inputPassword() {
      return Container(
        margin: EdgeInsets.only(top: 32),
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
                        decoration:
                            InputDecoration.collapsed(hintText: 'Password'),
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

    Widget buttonLogin() {
      return Container(
        margin: EdgeInsets.only(top: 32),
        child: Column(
          children: [
            Container(
              height: 56,
              width: double.infinity,
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Login',
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
            Text(
              'OR',
              style: GoogleFonts.lato(fontSize: 16, color: Color(0xff94959B)),
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
                  'Login with Google',
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
            SizedBox(
              height: 95,
            ),
          ],
        ),
      );
    }

    Widget footer() {
      return Container(
        // margin: EdgeInsets.only(bottom: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Don’t have an account? ',
              style: GoogleFonts.lato(
                fontSize: 16,
                color: Color(0xff94959B),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/RegisterPage');
              },
              child: Text(
                'Register',
                style: GoogleFonts.lato(fontSize: 16, color: backgroundColor2),
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
              inputEmail(),
              inputPassword(),
              rememberMe(),
              buttonLogin(),
              footer()
            ],
          ),
        ),
      ),
    );
  }
}
