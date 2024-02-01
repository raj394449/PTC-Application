// ignore_for_file: prefer_const_constructors, deprecated_member_use, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:ptc_application/Utils/colors.dart';
import 'package:ptc_application/Utils/constant.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Profile Screen",
          style: TextStyle(
              color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
        ),
        
        backgroundColor: kPrimaryColor,
        elevation: 1.5,
        actions: [
          InkWell(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.only(right: kDefaultPadding),
              child: Row(
                children: [
                  Icon(
                    Icons.report_gmailerrorred_outlined,
                    size: 30,
                    color: Colors.white,
                  ),
                  kHalfSizedBox,
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
                    backgroundImage: AssetImage('assets/clipart/profile.png'),
                  ),
                  kWidthSizedBox,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'I7X',
                        style: Theme.of(context).textTheme.subtitle1!.copyWith(
                            color: kOtherColor,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            sizedBox,
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    ProfileColumns(title: 'Name', value: 'Ranjit Saw'),
                    ProfileColumns(title: 'Mobile no.', value: '8809795382'),
                    ProfileColumns(title: 'Email', value: 'sk394449@gmail.com'),
                    ProfileColumns(title: 'Gender', value: 'Male'),
                    ProfileColumns(title: 'Country', value: 'India'),
                    ProfileColumns(title: 'State', value: 'Bihar'),
                    ProfileColumns(title: 'City', value: 'Jamui'),
                    ProfileColumns(title: 'Address', value: 'Mahisauri Chowk'),
                    ProfileColumns(title: 'PIN', value: '811307'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileColumns extends StatelessWidget {
  const ProfileColumns({Key? key, required this.title, required this.value})
      : super(key: key);
  final String title;
  final String value;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(kDefaultPadding * 0.2),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.subtitle1!.copyWith(
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
            InkWell(
              onTap: () {},
              child: Container(
                child: Row(
                  children: [
                    Icon(
                      Icons.edit,
                      size: 20,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
