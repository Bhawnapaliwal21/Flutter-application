// import 'package:authsystem/views/auth/signup_screen.dart';
import 'package:authsystem/views/auth/login_screen.dart';
import 'package:authsystem/views/auth/signup_screen.dart';
import 'package:authsystem/views/home/account_page.dart';
import 'package:authsystem/views/home/bottom_navigation_bar.dart';
import 'package:authsystem/views/home/home_screen.dart';
import 'package:authsystem/views/home/setting_page.dart';
// import 'package:authsystem/views/home/cart_item_screen.dart';
// import 'package:authsystem/views/home/detailPage.dart';
// import 'package:authsystem/views/home/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:LoginScreen(),
    );
  }
}


