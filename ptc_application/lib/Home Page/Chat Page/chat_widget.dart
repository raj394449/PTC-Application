// ignore_for_file: unnecessary_null_comparison, prefer_const_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:ptc_application/Home%20Page/Chat%20Page/chat_screen_data.dart';

class ChatWidget extends StatelessWidget {
  final ChatData chat_data;

  const ChatWidget({super.key, required this.chat_data})
      : assert(chat_data != null);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          leading: Image.asset(chat_data.image),
          title: Text(
            chat_data.name,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text(chat_data.desc),
          trailing: ChatButton(),
        ),
      ),
    );
  }
}

Widget ChatButton() {
  return InkWell(
    onTap: () {},
    child: Icon(
      Icons.chat,
      size: 30,
    ),
  );
}
