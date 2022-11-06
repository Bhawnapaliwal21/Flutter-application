import 'dart:async';

import 'package:authsystem/controllers/all_in_controller.dart';
import 'package:authsystem/views/home/account_page.dart';
import 'package:authsystem/views/home/cart_item_screen.dart';
import 'package:authsystem/views/home/home_screen.dart';
import 'package:authsystem/views/home/setting_page.dart';
import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

class BottomNavigationBarPage extends StatefulWidget {
  int selectedIndex;
  BottomNavigationBarPage({Key? key, required this.selectedIndex})
      : super(key: key);

  @override
  State<BottomNavigationBarPage> createState() =>
      _BottomNavigationBarPageState();
}

class _BottomNavigationBarPageState extends State<BottomNavigationBarPage> {
  List screen = [
    HomeScreen(),
    CartItemList(),
    const Setting(),
    AccountPage(),
  ];
  List screentitle = [
    'Explore',
    'My Bag',
    ' Setting',
    ' My Account',
  ];

  void onTapItems(int index) {
   
    Timer(const Duration(seconds: 5), () {
      setState(() {
        widget.selectedIndex = index;
        if (widget.selectedIndex == 3) {
          AllInController.getUserData();
        }
        print('Selected screen print ${widget.selectedIndex}');
      });
    });
  }

  void onAppBar(int index) {
    setState(() {
      widget.selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 80,
        backgroundColor: Colors.white10,
        // centerTitle: true,
        title: Text(
          "${screentitle[widget.selectedIndex]}",
          style: const TextStyle(
              color: Colors.black, fontSize: 35, fontWeight: FontWeight.bold),
        ),
      ),
      body: screen[widget.selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: <BottomNavigationBarItem>[
            const BottomNavigationBarItem(
                label: "Home",
                icon: Icon(Icons.home),
                backgroundColor: Colors.grey),
            BottomNavigationBarItem(
                label: "Saves",
                icon: AllInController.userItems1.isEmpty
                    ? const Icon(Icons.shopping_cart_outlined)
                    : Stack(
                        children: [
                          Badge(
                            badgeColor: Colors.redAccent,
                            badgeContent:
                                Text("${AllInController.userItems1.length}"),
                            child: const Icon(Icons.shopping_cart_outlined),
                          ),
                        ],
                      ),
                backgroundColor: Colors.grey),
            const BottomNavigationBarItem(
                label: "Settings",
                icon: Icon(Icons.settings),
                backgroundColor: Colors.grey),
            const BottomNavigationBarItem(
                label: "My Account",
                icon: Icon(Icons.account_circle_outlined),
                backgroundColor: Colors.grey),
          ],
          currentIndex: widget.selectedIndex,
          unselectedItemColor: Colors.grey,
          onTap: onTapItems,
          selectedItemColor: Colors.blueGrey[900]),
    );
  }
}
