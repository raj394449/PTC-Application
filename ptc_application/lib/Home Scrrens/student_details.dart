// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:ptc_application/Utils/colors.dart';
import 'package:ptc_application/Utils/constant.dart';

class Student_Details extends StatelessWidget {
  const Student_Details({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Student Details",
          style: TextStyle(
              color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
        ),
        backgroundColor: kPrimaryColor,
        elevation: 0,
        actions: [
          InkWell(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.only(right: kDefaultPadding),
              child: Row(
                children: [
                  Icon(
                    Icons.report_gmailerrorred_outlined,
                    color: Colors.white,
                    size: 30,
                  ),
                  kHalfWidthSizedBox,
                ],
              ),
            ),
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          hexStringToColor("CB2B93"),
          hexStringToColor("F5F5DC"),
          hexStringToColor("5E61F4")
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(kDefaultPadding * 2),
                    bottomLeft: Radius.circular(kDefaultPadding * 2),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      maxRadius: 50.0,
                      minRadius: 50.0,
                      backgroundColor: Colors.white,
                      backgroundImage:
                          AssetImage('assets/clipart/student_profile.png'),
                    ),
                    kWidthSizedBox,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Sanjay Kumar',
                          style: Theme.of(context)
                              .textTheme
                              .subtitle1!
                              .copyWith(
                                  color: kOtherColor,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold),
                        ),
                        kHalfSizedBox,
                        Text(
                          'Class BCA 3rd SEM | Roll no. 1322200',
                          style: Theme.of(context)
                              .textTheme
                              .subtitle2!
                              .copyWith(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w300,
                                  color: kOtherColor),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              sizedBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ProfileRow(
                      tittle: 'Registration Number', value: 'ABC-200-XYZ'),
                  ProfileRow(tittle: 'Academic Year', value: '2022-2025'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ProfileRow(tittle: 'Admission Number', value: '12320023'),
                  ProfileRow(tittle: 'Mobile Number', value: '8228040334'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ProfileRow(
                      tittle: 'Date of Admission', value: '01 Sept, 2022'),
                  ProfileRow(tittle: 'Date of Birth', value: '03 Aug, 2003'),
                ],
              ),
              sizedBox,
              ProfileColumn(title: 'Email', value: 'sanjayraj394449@gmail.com'),
              ProfileColumn(title: 'Aadhar Number', value: '7103-7078-6464'),
              ProfileColumn(title: 'Father Name', value: 'Ranjit Saw'),
              ProfileColumn(title: 'Mother Name', value: 'Hemanti Devi'),
              ProfileColumn(title: 'Gender', value: 'Male'),
              ProfileColumn(title: 'Blood Group', value: 'A Negative'),
              ProfileColumn(title: 'Country', value: 'India'),
              ProfileColumn(title: 'State', value: 'Bihar'),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileRow extends StatelessWidget {
  const ProfileRow({super.key, required this.tittle, required this.value});
  final String tittle;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          right: kDefaultPadding,
          left: kDefaultPadding,
          top: kDefaultPadding / 2),
      width: MediaQuery.of(context).size.width / 2,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                tittle,
                style: Theme.of(context).textTheme.subtitle1!.copyWith(
                      color: kTextBlackColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 15.0,
                    ),
              ),
              Text(
                value,
                style: Theme.of(context).textTheme.subtitle2!.copyWith(
                      color: kTextBlackColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 15.0,
                    ),
              ),
              kHalfSizedBox,
              SizedBox(
                width: MediaQuery.of(context).size.width / 3,
                child: Divider(
                  thickness: 1.0,
                ),
              ),
            ],
          ),
          Icon(
            Icons.lock_outline,
            size: 10,
          ),
        ],
      ),
    );
  }
}

class ProfileColumn extends StatelessWidget {
  const ProfileColumn({Key? key, required this.title, required this.value})
      : super(key: key);
  final String title;
  final String value;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.subtitle2!.copyWith(
                      color: kTextBlackColor,
                      fontSize: 15.0,
                      fontWeight: FontWeight.w600,
                    ),
              ),
              kHalfSizedBox,
              Text(
                value,
                style: Theme.of(context).textTheme.subtitle2!.copyWith(
                      color: kTextBlackColor,
                      fontSize: 15.0,
                      fontWeight: FontWeight.w600,
                    ),
              ),
              kHalfSizedBox,
              SizedBox(
                width: MediaQuery.of(context).size.width / 1.1,
                child: Divider(
                  thickness: 1.0,
                ),
              ),
            ],
          ),
          Icon(
            Icons.lock_outline,
            size: 20.0,
          )
        ],
      ),
    );
  }
}
