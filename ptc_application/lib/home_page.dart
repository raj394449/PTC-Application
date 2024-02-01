// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_final_fields, unused_field

import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:ptc_application/Utils/constant.dart';
import 'package:ptc_application/Widget/drawer.dart';

import 'Home Page/chat.dart';
import 'Home Page/home.dart';
import 'Home Page/factulty.dart';
import 'Home Page/video.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final screens = [
    Home(),
    ChatPage(),
    VideoSection(),
    Faculty(),
  ];
  dynamic currentindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        title: Text(
          'PTC',
          style: TextStyle(
              fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        iconTheme: IconThemeData(
          color: Colors.white,
          size: 32,
        ),
        elevation: 0,
        actions: [
          InkWell(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.only(
                right: kDefaultPadding,
                left: kDefaultPadding,
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.notifications_on,
                    size: 28,
                    color: Colors.white,
                  ),
                  kHalfSizedBox,
                ],
              ),
            ),
          ),
        ],
        backgroundColor: Colors.blue,
      ),

      // For Curved Navigation Bar

      bottomNavigationBar: Theme(
        data: Theme.of(context)
            .copyWith(iconTheme: IconThemeData(color: Colors.black)),
        child: CurvedNavigationBar(
          backgroundColor: Colors.transparent,
          color: Colors.blue,
          buttonBackgroundColor: Colors.white,
          animationDuration: Duration(milliseconds: 300),
          height: 60,
          animationCurve: Curves.easeInOut,
          items: [
            CurvedNavigationBarItem(
              child: Icon(
                Icons.home_outlined,
                size: 40,
              ),
              label: 'Home',
              labelStyle: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            CurvedNavigationBarItem(
              child: Icon(
                Icons.chat_bubble_outline,
                size: 30,
              ),
              label: 'Chat',
              labelStyle: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            CurvedNavigationBarItem(
              child: Icon(
                Icons.video_call,
                size: 40,
              ),
              label: 'Call',
              labelStyle: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            CurvedNavigationBarItem(
              child: Icon(
                Icons.person,
                size: 40,
              ),
              label: 'Faculty',
              labelStyle: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
          onTap: (index) {
            setState(() {
              currentindex = index;
            });
          },
        ),
      ),
      body: screens[currentindex],
      drawer: MyDrawer(),
    );
  }
}
