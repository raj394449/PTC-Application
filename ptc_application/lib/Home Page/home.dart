// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, unused_import, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, deprecated_member_use, camel_case_types, unused_label

import 'package:flutter/material.dart';
import 'package:ptc_application/Home%20Scrrens/student_details.dart';
import 'package:ptc_application/Utils/constant.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ptc_application/Utils/routes.dart';
import 'package:ptc_application/Widget/pdfviewer.dart';
import 'package:ptc_application/Widget/student_data.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          //Container
          Expanded(
            child: Container(
              color: Colors.transparent,
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: kOtherColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(kDefaultPadding),
                      topRight: Radius.circular(kDefaultPadding),
                    )),
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Home_Screens(
                          onPress: () {
                            Navigator.pushNamed(context, MyRoutes.ProfileRoute);
                          },
                          icon: 'assets/clipart/profile.png',
                          tittle: 'Profile',
                        ),
                        Home_Screens(
                          onPress: () {
                            Navigator.pushNamed(
                                context, MyRoutes.AttendanceRoute);
                          },
                          icon: 'assets/clipart/attendence.png',
                          tittle: 'Attendance Record',
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Home_Screens(
                          onPress: () {
                            Navigator.pushNamed(context, MyRoutes.StudentRoute);
                          },
                          icon: 'assets/clipart/student_profile.png',
                          tittle: 'Student Details',
                        ),
                        Home_Screens(
                          onPress: () {
                            Navigator.pushNamed(context, MyRoutes.PaymentRoute);
                          },
                          icon: 'assets/clipart/payment.png',
                          tittle: 'Payment Record',
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Home_Screens(
                          onPress: () {
                            Navigator.pushNamed(
                                context, MyRoutes.HolidaysRoute);
                          },
                          icon: 'assets/clipart/holidays.png',
                          tittle: 'Holidays List',
                        ),
                        Home_Screens(
                          onPress: () {
                            Navigator.pushNamed(
                                context, MyRoutes.DocumentRoute);
                            // Navigator.pushReplacement(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => PDFViewer()));
                          },
                          icon: 'assets/clipart/document.png',
                          tittle: 'Documents',
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Home_Screens(
                          onPress: () {
                            Navigator.pushNamed(
                                context, MyRoutes.UpComingEventRoute);
                          },
                          icon: 'assets/clipart/event.png',
                          tittle: 'Events',
                        ),
                        Home_Screens(
                          onPress: () {
                            Navigator.pushNamed(context, MyRoutes.AnnouncementRoute);
                          },
                          icon: 'assets/clipart/announcement.png',
                          tittle: 'Announcement',
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Home_Screens extends StatelessWidget {
  const Home_Screens(
      {super.key,
      required this.onPress,
      required this.icon,
      required this.tittle});

  final VoidCallback onPress;
  final String icon;
  final String tittle;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.only(top: kDefaultPadding / 0.5),
        width: MediaQuery.of(context).size.width / 2.5,
        height: MediaQuery.of(context).size.height / 6,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(kDefaultPadding / 2),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              icon,
              height: 100,
            ),
            Text(
              tittle,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.subtitle2!.copyWith(
                  color: Colors.white,
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
