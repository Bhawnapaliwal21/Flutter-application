import 'package:authsystem/views/home/privacy_policy.dart';
import 'package:flutter/material.dart';

class Setting extends StatelessWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const ListTile(
            leading: Text(
              "GENERAL",
              style: TextStyle(fontSize: 25),
            ),
          ),
          ListTile(
            leading: const Text(
              "Privacy Policies",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            trailing: IconButton(
                onPressed: () { Navigator.push(
                            context,
                            
                            MaterialPageRoute(
                              builder: (context) => const PrivacyPolicy(),
                            ),
                          );},
                icon: const Icon(
                  Icons.arrow_forward_ios,
                  size: 20,
                )),
          ),
          ListTile(
            leading: const Text(
              "Contact Support",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            trailing: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.arrow_forward_ios,
                  size: 20,
                )),
          ),
          
          const ListTile(
            leading: Text(
              "Version",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            trailing: Text(
              "1.2.1",
              style: TextStyle(color: Colors.grey),
            ),
          ),
          const ListTile(
            leading: Text(
              "Account",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            leading: const Text(
              "Logout",
              style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.logout,
                size: 20,
              ),
            ),
          ),
          ListTile(
            leading: const Text(
              "Reset Password",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.lock_reset,
                size: 20,
              ),
            ),
          ),
          ListTile(
            leading: const Text(
              "Delete Account",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.delete,
                size: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
