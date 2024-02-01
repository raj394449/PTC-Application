// ignore_for_file: prefer_const_constructors, prefer_final_fields, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, dead_code, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:ptc_application/Utils/constant.dart';
import 'package:ptc_application/Utils/routes.dart';

import 'Utils/colors.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({super.key});

  @override
  State<GetStarted> createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            hexStringToColor("CB2B93"),
            hexStringToColor("F5F5DC"),
            hexStringToColor("000000")
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
        ),
        child: Center(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 60.0, horizontal: 0.0),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: kDefaultPadding, top: kDefaultPadding / 4),
                    child: Text(
                      'WELCOME !',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 32,
                          color: Colors.black),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 2.0),
                  child: Image.asset(
                    "assets/images/logo ptc.png",
                    fit: BoxFit.cover,
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.only(left: kDefaultPadding),
                    child: Text(
                      'PARENT-TEACHER COMMUNICATION',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          color: Colors.purple),
                    ),
                  ),
                ),
                Image.asset(
                  "assets/clipart/get_strted.png",
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: kDefaultPadding,
                ),
                ElevatedButton(
                  child: Text(
                    "GET STARTED",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  style: TextButton.styleFrom(
                    minimumSize: Size(120, 40),
                    backgroundColor: Colors.deepPurpleAccent,
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, MyRoutes.LoginRoute);
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
