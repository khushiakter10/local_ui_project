import 'package:flutter/material.dart';

class SignupScreenProvider2 with ChangeNotifier {
  TextEditingController clubNameController = TextEditingController();
  TextEditingController positionNameController = TextEditingController();
  TextEditingController favoriteClubNameController = TextEditingController();
  TextEditingController favoritePlayerNameController = TextEditingController();

  ///Drop Down Initial selected position Variable
  String selectedPosition = "";

  ///Selected Foot Initial Value
  String _selectedFoot = "R";

  String get selectedFoot => _selectedFoot;

  // set value of Selected Foot
  void setSelectedFoot(String foot) {
    _selectedFoot = foot;
    notifyListeners();
  }
}
