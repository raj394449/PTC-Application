// ignore_for_file: deprecated_member_use, prefer_const_constructors

// This Code Not Required During Devlopment Time

import 'package:flutter/material.dart';
import 'package:ptc_application/Utils/colors.dart';
import 'package:ptc_application/Utils/constant.dart';

class StudentName extends StatelessWidget {
  const StudentName({super.key, required this.studentName});

  final String studentName;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          studentName,
          style: Theme.of(context).textTheme.subtitle1!.copyWith(
              fontWeight: FontWeight.bold, fontSize: 20.0, color: Colors.black),
        ),
      ],
    );
  }
}

class StudentClass extends StatelessWidget {
  const StudentClass({super.key, required this.studentClass});
  final String studentClass;

  @override
  Widget build(BuildContext context) {
    return Text(
      studentClass,
      style: Theme.of(context).textTheme.subtitle2!.copyWith(fontSize: 12.0),
    );
  }
}

class StudentYear extends StatelessWidget {
  const StudentYear({super.key, required this.studentYear});
  final String studentYear;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 24,
      decoration: BoxDecoration(
        color: kOtherColor,
        borderRadius: BorderRadius.circular(kDefaultPadding),
      ),
      child: Center(
        child: Text(
          studentYear,
          style: TextStyle(
              fontSize: 14.0, color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

class StudentPicture extends StatelessWidget {
  const StudentPicture(
      {super.key, required this.picAddress, required this.onPress});
  final String picAddress;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: CircleAvatar(
        minRadius: 50.0,
        maxRadius: 50.0,
        backgroundColor: kSecondaryColor,
        backgroundImage: AssetImage(picAddress),
      ),
    );
  }
}

class StudentCard extends StatelessWidget {
  const StudentCard(
      {super.key,
      required this.tittle,
      required this.value,
      required this.onPress});

  final String tittle;
  final String value;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        width: MediaQuery.of(context).size.width / 2,
        height: MediaQuery.of(context).size.height / 12,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            hexStringToColor("CB2B93"),
            hexStringToColor("F5F5DC"),
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
          borderRadius: BorderRadius.circular(kDefaultPadding),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              tittle,
              style: Theme.of(context).textTheme.bodyText2!.copyWith(
                  fontSize: 16.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              value,
              style: Theme.of(context).textTheme.subtitle2!.copyWith(
                  fontSize: 25.0,
                  color: kTextBlackColor,
                  fontWeight: FontWeight.w200),
            )
          ],
        ),
      ),
    );
  }
}
