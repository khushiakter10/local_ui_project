import 'package:flutter/material.dart';
import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';

class CustomWidgetContainedTabBarView extends StatelessWidget {
  final List<Widget> tabs;
  final List<Widget> views;
  final TabBarProperties tabBarProperties;

  const CustomWidgetContainedTabBarView({
    required this.tabs,
    required this.views,
    required this.tabBarProperties,
  });

  @override
  Widget build(BuildContext context) {
    return ContainedTabBarView(
      tabs: tabs,
      views: views,
      tabBarProperties: tabBarProperties,
    );
  }
}

class MyTabView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Custom Contained Tab Bar View")),
      body: CustomWidgetContainedTabBarView(
        tabs: [
          Text("Tab 1"),
          Text("Tab 2"),
          Text("Tab 3"),
        ],
        views: [
          Center(child: Text("Content for Tab 1")),
          Center(child: Text("Content for Tab 2")),
          Center(child: Text("Content for Tab 3")),
        ],
        tabBarProperties: TabBarProperties(
          indicatorColor: Colors.blue,
          labelColor: Colors.blue,
          unselectedLabelColor: Colors.grey,
          indicatorSize: TabBarIndicatorSize.label,
          labelStyle: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
