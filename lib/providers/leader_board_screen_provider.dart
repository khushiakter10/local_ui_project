import 'package:flutter/material.dart';
import 'package:training_app/constants/app_list.dart';

class LeaderBoardProvider extends ChangeNotifier {
  // State variables for each tab
  bool _showAllItemsU6U8 = false;
  bool _showAllItemsU9U11 = false;
  bool _showAllItemsU12U14 = false;
  bool _showAllItemsU15 = false;

  // Getters for each tab's state
  bool get showAllItemsU6U8 => _showAllItemsU6U8;
  bool get showAllItemsU9U11 => _showAllItemsU9U11;
  bool get showAllItemsU12U14 => _showAllItemsU12U14;
  bool get showAllItemsU15 => _showAllItemsU15;

  // Getters for items to display in each tab
  // List get itemsToDisplayU6U8 => _showAllItemsU6U8
  //     ? AppList.leaderboardList
  //     : AppList.leaderboardList.take(10).toList();

  // List get itemsToDisplayU9U11 => _showAllItemsU9U11
  //     ? AppList.leaderboardList
  //     : AppList.leaderboardList.take(10).toList();

  // List get itemsToDisplayU12U14 => _showAllItemsU12U14
  //     ? AppList.leaderboardList
  //     : AppList.leaderboardList.take(10).toList();

  // List get itemsToDisplayU15 => _showAllItemsU15
  //     ? AppList.leaderboardList
  //     : AppList.leaderboardList.take(10).toList();

  // Methods to toggle showing all items
  void toggleShowAllU6U8() {
    _showAllItemsU6U8 = true;
    notifyListeners();
  }

  void toggleShowAllU9U11() {
    _showAllItemsU9U11 = true;
    notifyListeners();
  }

  void toggleShowAllU12U14() {
    _showAllItemsU12U14 = true;
    notifyListeners();
  }

  void toggleShowAllU15() {
    _showAllItemsU15 = true;
    notifyListeners();
  }
}
