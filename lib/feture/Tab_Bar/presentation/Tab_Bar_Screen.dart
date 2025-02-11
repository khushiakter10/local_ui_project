import 'package:flutter/material.dart';
import 'package:training_app/feture/Tab_Bar/tab1.dart';
import 'package:training_app/feture/Tab_Bar/tab2.dart';

class TabBarScreen extends StatefulWidget {
  const TabBarScreen({super.key});

  @override
  State<TabBarScreen> createState() => _TabBarScreenState();
}
class _TabBarScreenState extends State<TabBarScreen>
    with SingleTickerProviderStateMixin{
    late TabController tabController;

  @override
  void initState(){
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }
  @override

  void dispose(){
    tabController.dispose();
    super.dispose();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "TabBar",
          style: TextStyle(color: Colors.blue),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              SizedBox(height: 50,),
              Container(
                width: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Column(
                  children: [
                    Padding(padding: EdgeInsets.all(5),
                      child: TabBar(
                        unselectedLabelColor: Colors.blue,
                        labelColor: Colors.pink,
                        dividerColor: Colors.transparent,
                        indicatorColor: Colors.white,
                        controller: tabController,
                          indicatorWeight: 2,
                          indicator: BoxDecoration(
                            color: Colors.yellowAccent,
                            borderRadius: BorderRadius.circular( 5)
                          ),
                          tabs: [
                        Tab(text: "Tab1",
                        ),
                      Tab(text: "Tab1",

                      )]),
                    )
                  ],
                ),
              ),
              Expanded(child: TabBarView(
                controller: tabController,
                  children:[
              //   Tab1(),
              // // Tab2(),
              ]

              ))

            ],
          ),
        ),
      ),
    );
  }
}
