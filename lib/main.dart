import 'package:flutter/material.dart';
import 'package:shamo_apps/pages/register_page.dart';
import 'package:shamo_apps/pages/splash_screen.dart';
import 'package:shamo_apps/pages/login_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashScreen(),
        '/loginPage': (context) => LoginPage(),
        '/RegisterPage': (context) => RegisterPage()
      },
    );
  }
}
