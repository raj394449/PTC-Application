// ignore_for_file: unnecessary_null_comparison, prefer_const_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:ptc_application/Home%20Page/Video%20Page/video_screen_data.dart';

class VideoWidget extends StatelessWidget {
  final Data data;

  const VideoWidget({super.key, required this.data}) : assert(data != null);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          leading: Image.asset(data.image),
          title: Text(
            data.name,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text(data.desc),
          trailing: Button(),
        ),
      ),
    );
  }
}

Widget Button() {
  return InkWell(
    onTap: () {},
    child: Icon(
      Icons.video_call,
      size: 40,
    ),
  );
}
