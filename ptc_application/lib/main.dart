// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ptc_application/Home%20Scrrens/announcement.dart';
import 'package:ptc_application/Home%20Scrrens/attendance_record.dart';
import 'package:ptc_application/Home%20Scrrens/documents.dart';
import 'package:ptc_application/Home%20Scrrens/holidays_list.dart';
import 'package:ptc_application/Home%20Scrrens/payment_method.dart';
import 'package:ptc_application/Home%20Scrrens/profile.dart';
import 'package:ptc_application/Home%20Scrrens/student_details.dart';
import 'package:ptc_application/Home%20Scrrens/upcoming_events.dart';
import 'Utils/routes.dart';
import 'get_started.dart';
import 'login_page.dart';
import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.HomeRoute,
      routes: {
        "/": (context) => GetStarted(),
        MyRoutes.LoginRoute: (context) => LoginPage(),
        MyRoutes.HomeRoute: (context) => HomePage(),
        MyRoutes.StudentRoute: (context) => Student_Details(),
        MyRoutes.ProfileRoute: (context) => ProfileScreen(),
        MyRoutes.AttendanceRoute: (context) => AttendanceScreen(),
        MyRoutes.PaymentRoute: (context) => PaymentScreen(),
        MyRoutes.HolidaysRoute: (context) => HolidayScreen(),
        MyRoutes.DocumentRoute: (context) => DocumentScreen(),
        MyRoutes.UpComingEventRoute: (context) => EventScreen(),
        MyRoutes.AnnouncementRoute: (context) => AnnouncementScreen(),
      },
    );
  }
}
