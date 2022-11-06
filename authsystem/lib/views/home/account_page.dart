import 'package:authsystem/controllers/all_in_controller.dart';
import 'package:flutter/material.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({
    Key? key,
  }) : super(key: key);

  @override
  State<AccountPage> createState() => AccountPageState();
}

class AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    var children2 = [
      const Padding(
        padding: EdgeInsets.symmetric(horizontal: 80, vertical: 20),
        child: CircleAvatar(
          radius: 120,
          backgroundImage: NetworkImage(
              "https://i.pinimg.com/736x/c5/f8/27/c5f8270957c465275d6b39808745ce6d.jpg"),
          child: Icon(
            Icons.account_circle,
            size: 140,
            color: Colors.white,
          ),
        ),
      ),
      const SizedBox(
        height: 50,
      ),
      // ignore: prefer_const_constructors
      Padding(
        padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
        child: const Text(
          "Name",
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
          ),
        ),
      ),

      Padding(
        padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
        child: Text(
          AllInController.userProfileData['username'].toString(),
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 23,
          ),
        ),
      ),
      const Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Divider(
          
          height: 25,
          thickness: 0.5,
          color: Colors.grey,
        ),
      ),
      const SizedBox(
        height: 20,
      ),
      const Padding(
        padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
        child: Text(
          "Mobile Number",
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
        child: Text(
          ' ${AllInController.userProfileData['usernumber'].toString()}',
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 23,
          ),
        ),
      ),
      const Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Divider(
          height: 25,
          thickness: 0.5,
          color: Colors.grey,
        ),
      ),
      const SizedBox(
        height: 20,
      ),
      const Padding(
        padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
        child: Text(
          "Password",
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
        child: Text(
          ' ${AllInController.userProfileData['userpassword'].toString()}',
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 23,
          ),
        ),
      ),const Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Divider(
          
          height: 25,
          thickness: 0.5,
          color: Colors.grey,
        ),
      ),
    ];
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: children2,
        ),
      ),
    );
  }
}
