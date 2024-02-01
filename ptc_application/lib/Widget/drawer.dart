// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_local_variable, prefer_const_declarations, avoid_unnecessary_containers, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:ptc_application/Utils/constant.dart';
import 'package:ptc_application/Utils/routes.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final imageUrl = "assets/clipart/profile.png";
    return Drawer(
      child: Container(
        color: kPrimaryColor,
        child: ListView(
          scrollDirection: Axis.vertical,
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text(
                  'Ranjit Saw',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                accountEmail: Text(
                  'sk394449@gmail.com',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                currentAccountPicture: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, MyRoutes.ProfileRoute);
                  },
                  child: CircleAvatar(
                    backgroundImage: AssetImage(imageUrl),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: kDefaultPadding / 2,
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                leading: Icon(
                  Icons.settings,
                  color: Colors.white,
                  size: 32,
                ),
                title: Text(
                  "Setting",
                  textScaleFactor: 1.2,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                leading: Icon(
                  Icons.info,
                  color: Colors.white,
                  size: 32,
                ),
                title: Text(
                  "About",
                  textScaleFactor: 1.2,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                leading: Icon(
                  Icons.report,
                  color: Colors.white,
                  size: 32,
                ),
                title: Text(
                  "Report issue",
                  textScaleFactor: 1.2,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                leading: Icon(
                  Icons.feedback,
                  color: Colors.white,
                  size: 32,
                ),
                title: Text(
                  "Feedback",
                  textScaleFactor: 1.2,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                leading: Icon(
                  Icons.help,
                  color: Colors.white,
                  size: 32,
                ),
                title: Text(
                  "Help",
                  textScaleFactor: 1.2,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                leading: Icon(
                  Icons.change_circle,
                  color: Colors.white,
                  size: 32,
                ),
                title: Text(
                  "Change Password",
                  textScaleFactor: 1.2,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, MyRoutes.LoginRoute);
              },
              child: ListTile(
                leading: Icon(
                  Icons.logout,
                  color: Colors.white,
                  size: 32,
                ),
                title: Text(
                  "Logout",
                  textScaleFactor: 1.2,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
