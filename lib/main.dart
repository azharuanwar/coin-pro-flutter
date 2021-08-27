import 'package:flutter/material.dart';
import 'package:shamo_apps/pages/final_step_page.dart';
import 'package:shamo_apps/pages/home_page.dart';
import 'package:shamo_apps/pages/register_page.dart';
import 'package:shamo_apps/pages/set_pin_page.dart';
import 'package:shamo_apps/pages/splash_screen.dart';
import 'package:shamo_apps/pages/login_page.dart';
import 'package:shamo_apps/pages/verif_email_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashScreen(),
        '/LoginPage': (context) => LoginPage(),
        '/RegisterPage': (context) => RegisterPage(),
        '/VerifyEmail': (context) => VerifyEmail(),
        '/SetPinPage': (context) => SetPinpage(),
        '/FinalStepPage': (context) => FinalStepPage(),
        '/HomePage': (context) => HomePage(),
      },
    );
  }
}
