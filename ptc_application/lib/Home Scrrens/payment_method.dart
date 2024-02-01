// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, deprecated_member_use, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:ptc_application/Home%20Scrrens/Payment/payment_data.dart';
import 'package:ptc_application/Utils/colors.dart';
import 'package:ptc_application/Utils/constant.dart';
import 'package:ptc_application/Widget/pdfviewer.dart';
import 'package:ptc_application/Widget/student_data.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Payment Record Screen"),
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
                      tittle: 'Fees Dues',
                      value: '133333rs INR',
                      onPress: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(kDefaultPadding),
                  topRight: Radius.circular(kDefaultPadding),
                ),
                color: kOtherColor,
              ),
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                padding: EdgeInsets.all(kDefaultPadding),
                itemCount: fee.length,
                itemBuilder: (context, index) {
                  return Container(
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 25),
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(bottom: 0),
                            padding: EdgeInsets.all(kDefaultPadding),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(kDefaultPadding),
                              ),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    color: kTextLightColor, blurRadius: 2.0),
                              ],
                            ),
                            child: Column(
                              children: [
                                FeeDetailRow(
                                  tittle: 'Receipt No',
                                  statusValue: fee[index].receiptNo,
                                ),
                                SizedBox(
                                  height: kDefaultPadding,
                                  child: Divider(
                                    thickness: 1.0,
                                  ),
                                ),
                                FeeDetailRow(
                                  tittle: 'Session',
                                  statusValue: fee[index].session,
                                ),
                                sizedBox,
                                FeeDetailRow(
                                  tittle: 'Payment Date',
                                  statusValue: fee[index].date,
                                ),
                                sizedBox,
                                FeeDetailRow(
                                  tittle: 'Status',
                                  statusValue: fee[index].paymentStatus,
                                ),
                                sizedBox,
                                SizedBox(
                                  height: kDefaultPadding,
                                  child: Divider(
                                    thickness: 1.0,
                                  ),
                                ),
                                FeeDetailRow(
                                  tittle: 'Total Amount',
                                  statusValue: fee[index].totalAmount,
                                ),
                              ],
                            ),
                          ),
                          FeeButton(
                            tittle: fee[index].btnStatus,
                            iconData: fee[index].btnStatus == 'Paid'
                                ? Icons.download_outlined
                                : Icons.arrow_forward_outlined,
                            onPress: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => PDFViewer(),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class FeeButton extends StatelessWidget {
  final String tittle;
  final IconData iconData;
  final VoidCallback onPress;

  const FeeButton(
      {super.key,
      required this.tittle,
      required this.iconData,
      required this.onPress});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.only(top: kDefaultPadding / 148),
        width: double.infinity,
        height: 40.0,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            hexStringToColor("CB2B93"),
            hexStringToColor("F5F5DC"),
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(kDefaultPadding),
            bottomLeft: Radius.circular(kDefaultPadding),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              tittle,
              style: Theme.of(context).textTheme.subtitle2!.copyWith(
                    fontWeight: FontWeight.w500,
                    fontSize: 18.0,
                    color: kOtherColor,
                  ),
            ),
            Icon(
              iconData,
              color: kOtherColor,
              size: 30,
            ),
          ],
        ),
      ),
    );
  }
}

class FeeDetailRow extends StatelessWidget {
  final String tittle;
  final String statusValue;

  const FeeDetailRow(
      {super.key, required this.tittle, required this.statusValue});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          tittle,
          style: Theme.of(context).textTheme.subtitle1!.copyWith(
                fontSize: 14,
                color: kTextLightColor,
              ),
        ),
        Text(
          statusValue,
          style: Theme.of(context).textTheme.subtitle1!.copyWith(
                fontSize: 14,
                color: kTextBlackColor,
                fontWeight: FontWeight.w600,
              ),
        ),
      ],
    );
  }
}
