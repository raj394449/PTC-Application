// ignore_for_file: unnecessary_null_comparison, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ptc_application/Home%20Page/Faculty%20Member/model.dart';

class FacultyWidget extends StatelessWidget {
  final Item item;

  const FacultyWidget({super.key, required this.item}) : assert(item != null);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          leading: Image.asset(item.image),
          title: Text(
            item.name,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text(item.desc),
        ),
      ),
    );
  }
}
