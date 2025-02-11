import 'dart:async';

import 'package:flutter/material.dart';

class ChallangeExecutionCameraScreenProvider with ChangeNotifier {
  int _elapsedTime = 0; // Time in seconds
  Timer? _timer;
  bool _isRunning = false; // To track the timer state

  int get elapsedTime => _elapsedTime;
  bool get isRunning => _isRunning;

  // Start the stopwatch
  void start() {
    if (!_isRunning) {
      _isRunning = true;
      _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
        _elapsedTime++;
        notifyListeners();
      });
    }
  }

  // Stop the stopwatch
  void stop() {
    if (_isRunning) {
      _timer?.cancel();
      _isRunning = false;
      notifyListeners();
    }
  }

  // Reset the stopwatch
  void reset() {
    _timer?.cancel();
    _elapsedTime = 0;
    _isRunning = false;
    notifyListeners();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}
