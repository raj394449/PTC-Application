// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:ptc_application/Utils/constant.dart';
import 'package:ptc_application/Widget/student_data.dart';

class AttendanceScreen extends StatelessWidget {
  const AttendanceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Attendance Record"),
        backgroundColor: kPrimaryColor,
        elevation: 0,
        actions: [
          InkWell(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.only(right: kDefaultPadding),
              child: Row(
                children: [
                  Icon(Icons.report_gmailerrorred_outlined),
                  kHalfWidthSizedBox,
                ],
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 4.0,
            padding: EdgeInsets.all(12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        StudentName(studentName: 'Sanjay Kumar'),
                        kHalfSizedBox,
                        StudentClass(
                            studentClass: 'BCA 3rd SEM | Roll no. 1322200'),
                        kHalfSizedBox,
                        StudentYear(studentYear: '2022-2025'),
                      ],
                    ),
                    kHalfSizedBox,
                    StudentPicture(
                      picAddress: 'assets/clipart/student_profile.png',
                      onPress: () {},
                    ),
                  ],
                ),
                sizedBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    StudentCard(
                      tittle: 'Attendance',
                      value: '93.4%',
                      onPress: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
