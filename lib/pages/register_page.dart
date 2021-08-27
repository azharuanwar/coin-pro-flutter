import 'package:flutter/material.dart';
import 'theme.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterPage extends StatefulWidget {
  // const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Register new \naccount',
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

    Widget confirmPassword() {
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
                        decoration: InputDecoration.collapsed(
                            hintText: 'Password Confirmation'),
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

    Widget checkBox() {
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
              'By creating an account, you agree \nto our Terms and Condition',
              style: GoogleFonts.lato(fontSize: 16, color: Color(0xff94959B)),
            ),
          ],
        ),
      );
    }

    Widget buttonRegister() {
      return Container(
        margin: EdgeInsets.only(top: 32),
        child: Column(
          children: [
            Container(
              height: 56,
              width: double.infinity,
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/VerifyEmail');
                },
                child: Text(
                  'Register',
                  style: textButton,
                ),
                style: TextButton.styleFrom(
                    backgroundColor: backgroundColor2,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12))),
              ),
            ),
            SizedBox(
              height: 111,
            )
          ],
        ),
      );
    }

    Widget footer() {
      return Container(
        margin: EdgeInsets.only(bottom: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Already have an account? ',
              style: GoogleFonts.lato(
                fontSize: 16,
                color: Color(0xff94959B),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/LoginPage');
              },
              child: Text(
                'Login',
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
              confirmPassword(),
              checkBox(),
              buttonRegister(),
              footer()
            ],
          ),
        ),
      ),
    );
  }
}
