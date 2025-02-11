//
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:training_app/feture/log_in_sign_up_and_sign_in/presentation/log_in/presentation/log_in_screen.dart';
//
// import '../log_in_sign_up_and_sign_in/presentation/sign_up_two/presntation/sign_up_two_screen.dart';
//
// class TabBarScreens extends StatefulWidget {
//   const TabBarScreens({super.key});
//
//   @override
//   State<TabBarScreens> createState() => _TabBarScreensState();
// }
//
// class _TabBarScreensState extends State<TabBarScreens>
//     with SingleTickerProviderStateMixin {
//   late TabController tabController;
//   @override
//   void initState() {
//     tabController = TabController(length: 2, vsync: this);
//     super.initState();
//   }
//
//   @override
//   void dispose() {
//     tabController.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         title: Text(
//           "TabBar",
//           style: TextStyle(color: Colors.red),
//         ),
//       ),
//           body: SingleChildScrollView(
//             child: Padding(
//               padding:   EdgeInsets.all(10.0),
//               child: Column(
//                  children: [
//                    Container(
//                      height: 50.h,
//                      width:  400,
//                      decoration: BoxDecoration(
//                        color: Colors.red,
//                        borderRadius: BorderRadius.circular(7.r),
//                      ),
//                      child: Column(
//                        children: [
//                          Padding(padding: EdgeInsets.all(5),child: TabBar(
//                            controller: tabController,
//                              tabs: [
//                            Tab(text: 'ferdaus',),
//                            Tab(text: 'ferdaus',),
//                          ]),)
//                        ],
//                      ),
//                    )
//                  ],
//               ),
//             ),
//           ),
//     );
//   }
// }