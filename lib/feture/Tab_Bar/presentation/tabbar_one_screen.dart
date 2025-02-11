import 'package:flutter/material.dart';

class TabbarOneScreen extends StatefulWidget {
  const TabbarOneScreen({super.key});

  @override
  State<TabbarOneScreen> createState() => _TabbarOneScreenState();
}

class _TabbarOneScreenState extends State<TabbarOneScreen>
    with SingleTickerProviderStateMixin {
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
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Tabbar",style: TextStyle(color: Colors.red),),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: 50,),
            Container(
             // height: 50,
              width: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(5),
              ),child: Column(
              children: [
                Padding(padding: EdgeInsets.all(5),
                  child: TabBar(
                    unselectedLabelColor: Colors.blue,
                    labelColor: Colors.blue,
                    indicatorColor: Colors.red,
                      indicatorWeight: 2,
                      indicator: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      controller: tabController,
                      tabs: [
                    Tab(text: "Tab 1",),
                    Tab(text: "Tab 1",)
                  ]),
                )
              ],
            ),

            )

          ],
        ),
      ),

    );
  }
}
