// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ptc_application/Utils/constant.dart';

class DocumentScreen extends StatelessWidget {
  const DocumentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Documents Screen"),
        backgroundColor: kPrimaryColor,
        elevation: 0,
        actions: [
          InkWell(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.only(right: kDefaultPadding),
              child: Row(
                children: const [
                  Icon(Icons.report_gmailerrorred_outlined),
                  kHalfWidthSizedBox,
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
