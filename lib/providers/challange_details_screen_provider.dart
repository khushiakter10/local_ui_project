import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ChallengeDetailsScreenProvider with ChangeNotifier {
  XFile? videoFile;
  String newtwrkVideoFilePath =
      "https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4";

  // Method to pick a video from camera or gallery
  Future<void> makeVideoWithCamera({required ImageSource source}) async {
    final returnedVideo = await ImagePicker().pickVideo(source: source);

    if (returnedVideo == null) {
      return;
    } else {
      videoFile = XFile(
          returnedVideo.path); // Update the videoFile with the selected video
      notifyListeners(); // Notify listeners to update the UI
    }
  }
}
