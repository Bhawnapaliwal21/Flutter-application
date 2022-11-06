// ignore_for_file: avoid_print

import 'package:authsystem/views/auth/login_screen.dart';
import 'package:authsystem/views/home/bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

import '../views/home/home_screen.dart';

class AllInController {
  static List userData = [];
  static List userItems1 = [];
  // static List userItems2 = [];
  static int? id;

  static login(Map userSignin, context) {
    for (int i = 0; i < userData.length; i++) {
      if (userData[i]['usernumber'] == userSignin['loginnumber'] &&
          userData[i]['userpassword'] == userSignin['loginpassword']) {
        print("user exist");
        print(" user id ${userData[i]['userId']}");
        id = userData[i]['userId'];

        print("loginData:$userSignin");
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (context) => BottomNavigationBarPage(
                selectedIndex: 0,
              ),
            ),
            ((route) => false));
      } else {
        print("user does not exist");
      }
    }
  }

  static signup(Map userSignup, context) {
    Map userSignupData = {
      'userId': userData.length + 1,
      'username': userSignup['signupname'],
      'usernumber': userSignup['signupnumber'],
      'userpassword': userSignup['signuppassword'],
    };
    userData.add(userSignupData);
    print("signupData:$userData");

    Navigator.pop(context);
  }

  static addtocart(Map cartItems, context) {
    print('CartItems $cartItems');
    print("Items:$userItems1");
    int index = userItems1.indexWhere(
      (item) => item['id'] == cartItems['id'],
    );

    if (index == -1) {
      userItems1.add(cartItems);
    }

    print('Index values of cart items $index');

    print("Items:$userItems1");
  }

  static removetocart(Map Itemsofcart, context) {
    print(' Itemsofcart $Itemsofcart');

    print("Items:$userItems1");
    int index = userItems1.indexWhere(
      (item) => item['id'] == Itemsofcart['id'],
    );

    // ignore: unnecessary_null_comparison
    if (index == -1) {
      print("nothing in cart");
    } else {
      userItems1.removeWhere(
        (element) => element["id"] == Itemsofcart['id'],
      );
    }
    print('Index values of cart items $index');

    print("Items:$userItems1");
  }

  static Map userProfileData = {};
  static getUserData() {
    print("id $id");

    Map<dynamic, dynamic> result =
        userData.firstWhere((element) => element['userId'] == id);

    if (result.isNotEmpty) {
      userProfileData.addAll(result);
      print("userProfileData $userProfileData");
    }
  }
}
