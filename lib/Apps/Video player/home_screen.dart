import 'package:Nixon/Apps/Video%20player/video_items.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(' Video Player'),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          VideoItems(
            videoPlayerController: VideoPlayerController.asset(
              'images/video_6.mp4',
            ),
            looping: true,
            autoplay: true,
          ),
          VideoItems(
            videoPlayerController: VideoPlayerController.asset(
              'images/video_3.mp4',
            ),
            looping: false,
            autoplay: false,
          ),
          VideoItems(
            videoPlayerController: VideoPlayerController.asset(
              'images/video_2.mp4',
            ),
            autoplay: true,
          ),
        ],
      ),
    );
  }
}
