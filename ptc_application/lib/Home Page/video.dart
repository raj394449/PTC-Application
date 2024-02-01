// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ptc_application/Home%20Page/Video%20Page/video_screen_data.dart';
import 'package:ptc_application/Home%20Page/Video%20Page/video_widget.dart';

class VideoSection extends StatelessWidget {
  const VideoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      body: ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: VideoPageData.videoPagedata.length,
        itemBuilder: (context, index) {
          return VideoWidget(
            data: VideoPageData.videoPagedata[index],
          );
        },
      ),
    );
  }
}
