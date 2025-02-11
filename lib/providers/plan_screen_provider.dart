import 'package:flutter/material.dart';

class PlanScreenProvider with ChangeNotifier {
  ///Selected package Duration Initial Value
  String _packageType = "monthly";

  String get packageType => _packageType;

  // set valu of Selected package
  ///Monthly
  ///Earyly
  void setPackageType({required String packageType}) {
    _packageType = packageType;
    notifyListeners();
  }

  ///Select Package Type
  ///Basic
  ///Pro Plan
  ///Training membership
  int _selectedPlanIndex = -1; // Default no selection
  int get selectedPlanIndex => _selectedPlanIndex;

  void setSelectedPlanIndex(int index) {
    _selectedPlanIndex = index;
    notifyListeners();
  }
}
