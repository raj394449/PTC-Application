// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:ptc_application/Home%20Page/Faculty%20Member/faculty_widget.dart';
import 'package:ptc_application/Home%20Page/Faculty%20Member/model.dart';

class Faculty extends StatelessWidget {
  const Faculty({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      body: ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: FacultyMember.facultyMember.length,
        itemBuilder: (context, index) {
          return FacultyWidget(
            item: FacultyMember.facultyMember[index],
          );
        },
      ),
    );
  }
}
