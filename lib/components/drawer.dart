// ignore_for_file: prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pvnow/theme/pv_colors.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  void logout() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: pvPurpleDark,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // List of Pages
          Column(
            children: [
              DrawerHeader(
                child: Image.asset(
                  'assets/icons/logo.png',
                  width: 200,
                  height: 200,
                ),
              ),
              const SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: ListTile(
                  leading: Icon(Icons.settings),
                  title: Text("SETTINGS"),
                ),
              ),
            ],
          ),

          Padding(
            padding: const EdgeInsets.only(bottom: 50, left: 25),
            child: ListTile(
              leading: Icon(Icons.logout),
              title: Text("LOGOUT"),
              onTap: logout,
            ),
          ),
        ],
      ),
    );
  }
}