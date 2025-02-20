import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
class YouTubePlayerDemo extends StatefulWidget {
  @override
  _YouTubePlayerDemoState createState() => _YouTubePlayerDemoState();
}
class _YouTubePlayerDemoState extends State<YouTubePlayerDemo> {
  late YoutubePlayerController _controller;
  @override
  void initState() {
    super.initState();


    _controller = YoutubePlayerController(
      initialVideoId: 'dQw4w9WgXcQ', // Use the video ID from YouTube (e.g. 'dQw4w9WgXcQ' is the famous Rickroll video)
      flags: YoutubePlayerFlags(
        autoPlay: true, // Automatically start playing when the video is ready
        mute: false,    // Do not mute the video initially
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();  // Dispose of the controller when the widget is disposed
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("YouTube Player Example"),
      ),
      body: Column(
        children: [
          // Embed the YoutubePlayer widget to display the video
          YoutubePlayer(
            controller: _controller,
            showVideoProgressIndicator: true, // Show a video progress bar
            progressIndicatorColor: Colors.amber,
            onReady: () {
              // Perform any actions when the player is ready
              print("Player is ready.");
            },
          ),
        ],
      ),
    );
  }
}