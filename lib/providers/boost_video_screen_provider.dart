///Player Name : Video Player
// import 'package:flutter/material.dart';
// import 'package:video_player/video_player.dart';

// class BoostVideoScreenProvider with ChangeNotifier {
//   String videoUrl =
//       "https://www.youtube.com/watch?v=rjBsQ9SygnE"; // Sample URL, needs to be replaced
//   VideoPlayerController? videoPlayerController;
//   bool isLoading = true; // To track loading state
//   String errorMessage = "";

//   // Initialize the video player with the video URL
//   Future<void> initializeVideo(String url) async {
//     try {
//       // Assuming the URL is a valid video URL that VideoPlayerController can handle (e.g., .mp4 file URL)
//       videoPlayerController = VideoPlayerController.networkUrl(Uri.parse(url))
//         ..initialize().then((_) {
//           if (videoPlayerController?.value.hasError == true) {
//             errorMessage = videoPlayerController?.value.errorDescription ??
//                 'Unknown error';
//             isLoading = false;
//           } else {
//             isLoading = false;
//           }
//           notifyListeners();
//         }).catchError((error) {
//           errorMessage = 'Error initializing video: $error';
//           isLoading = false;
//           notifyListeners();
//         });
//     } catch (error) {
//       errorMessage = 'Error initializing video: $error';
//       isLoading = false;
//       notifyListeners();
//     }
//   }

//   // Play the video
//   void playVideo() {
//     videoPlayerController?.play();
//     notifyListeners();
//   }

//   // Pause the video
//   void pauseVideo() {
//     videoPlayerController?.pause();
//     notifyListeners();
//   }

//   // Dispose of the video player to release resources
//   @override
//   void dispose() {
//     videoPlayerController?.dispose();
//     super.dispose();
//   }
// }

/// *
/// Player Name : Youtube Video player
library;

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class BoostVideoScreenProvider with ChangeNotifier {
  late YoutubePlayerController youtubePlayerController;
  bool isLoading = true;
  String errorMessage = "";
  String videoUrl = ""; // We'll hold the video URL here

  // Fetch video URL dynamically (this simulates fetching from an API)
  Future<void> fetchVideoUrl() async {
    try {
      // Simulating API fetch of video URL
      var fetchedUrl =
          "https://www.youtube.com/watch?v=rjBsQ9SygnE"; // Replace with actual API response

      videoUrl = fetchedUrl; // Save the fetched video URL
      await initializeVideo(
          videoUrl); // Initialize the player with the dynamic URL
    } catch (error) {
      errorMessage = "Error fetching video URL: $error";
      isLoading = false;
      notifyListeners(); // Notify listeners to update UI
    }
  }

  // Initialize the YouTube player with the video URL
  Future<void> initializeVideo(String url) async {
    try {
      final videoId = YoutubePlayer.convertUrlToId(url);
      if (videoId == null) {
        throw 'Invalid YouTube URL';
      }

      youtubePlayerController = YoutubePlayerController(
        initialVideoId: videoId,
        flags: const YoutubePlayerFlags(
          autoPlay: false,
          mute: false,
        ),
      );

      // The controller initializes automatically when the player widget is created
      // Update loading state to false once the controller is created
      isLoading = false;
      notifyListeners(); // Notify listeners to update UI
    } catch (error) {
      errorMessage = 'Error initializing YouTube video: $error';
      isLoading = false;
      notifyListeners(); // Notify listeners to update UI
    }
  }

  // Play the video
  void playVideo() {
    if (!youtubePlayerController.value.isPlaying) {
      youtubePlayerController.play();
      notifyListeners(); // Notify listeners to update UI
    }
  }

  // Pause the video
  void pauseVideo() {
    if (youtubePlayerController.value.isPlaying) {
      youtubePlayerController.pause();
      notifyListeners(); // Notify listeners to update UI
    }
  }

  @override
  void dispose() {
    // Dispose the YouTube player controller to release resources
    youtubePlayerController.dispose();
    super.dispose();
  }

  ////Video Picker
  File? videoFile;

  void makeVideoWithCamera({required ImageSource source}) async {
    final returnedVideo = await ImagePicker().pickVideo(source: source);

    if (returnedVideo == null) {
      return;
    } else {
      videoFile = File(returnedVideo.path);
      notifyListeners();
    }
  }
}
