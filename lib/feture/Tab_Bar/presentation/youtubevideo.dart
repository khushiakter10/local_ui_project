import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
class youtube extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('YouTube Player Example'),
        ),
        body: YoutubePlayerScreen(),
      ),
    );
  }
}
class YoutubePlayerScreen extends StatefulWidget {
  @override
  _YoutubePlayerScreenState createState() => _YoutubePlayerScreenState();
}

class _YoutubePlayerScreenState extends State<YoutubePlayerScreen> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    // Initialize the Youtube player controller with the video ID
    _controller = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId('https://www.youtube.com/watch?v=dQw4w9WgXcQ')!,
      flags: YoutubePlayerFlags(
        autoPlay: true, // Auto-play the video
        mute: false, // Keep sound on
      ),
    );
  }

  @override
  void dispose() {
    // Dispose of the controller when the widget is destroyed
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return YoutubePlayer(
      controller: _controller,
      showVideoProgressIndicator: true, // Show progress bar
      onReady: () {
        print("Video is ready to play");
      },
    );
  }
}
