// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ptc_application/Home%20Page/Chat%20Page/chat_screen_data.dart';
import 'package:ptc_application/Home%20Page/Chat%20Page/chat_widget.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      body: ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: ChatPageData.chatPagedata.length,
        itemBuilder: (context, index) {
          return ChatWidget(
            chat_data: ChatPageData.chatPagedata[index],
          );
        },
      ),
    );
  }
}
