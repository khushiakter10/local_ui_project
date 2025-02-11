// // import 'package:flutter/material.dart';
// // import 'package:flutter_screenutil/flutter_screenutil.dart';
// // import 'package:shotter_app/feature/challange_section/presentation/adding_details_task.dart';
// // import 'package:shotter_app/feature/challange_section/presentation/challange.dart';
// //
// // import '../gen/assets.gen.dart';
// //
// // class NavigationBarScreen extends StatefulWidget {
// //   const NavigationBarScreen({super.key});
// //   @override
// //   State<NavigationBarScreen> createState() => _NavigationBarScreenState();
// // }
// // class _NavigationBarScreenState extends State<NavigationBarScreen> {
// //   int currentIndex = 0;
// //   final pageList = [
// //     ChallengeScreen(),
// //     AddingDetailsTaskScreen(),
// //
// //     Text('hi'),
// //     Text('hi'),
// //     Text("hi"),
// //   ];
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: pageList[
// //           currentIndex], // Correct the access of the pageList using _index
// //       bottomNavigationBar: BottomNavigationBar(
// //         selectedItemColor: Colors.red,
// //         backgroundColor: Colors.black,
// //         currentIndex:
// //             currentIndex, // Set the current index to sync with BottomNavigationBar
// //         onTap: (int index) {
// //           setState(() {
// //             currentIndex = index; // Update _index when a new item is tapped
// //           });
// //         },
// //         items: [
// //           BottomNavigationBarItem(
// //
// //               label: '',
// //               backgroundColor: Color(0xFF171B24),
// //               icon: Image.asset(Assets.icons.home.path,
// //                   height: 24.h, width: 24.w)),
// //           BottomNavigationBarItem(
// //               icon: Image.asset(Assets.icons.picturk.path,
// //                   height: 24.h, width: 24.w),
// //               label: ''),
// //           BottomNavigationBarItem(
// //               icon:
// //                   Image.asset(Assets.icons.time2k.path, height: 24, width: 24),
// //               label: ''),
// //           BottomNavigationBarItem(
// //               icon: Image.asset(
// //                 Assets.icons.time24.path,
// //                 height: 24.h,
// //                 width: 24.w,
// //               ),
// //               label: ''),
// //           BottomNavigationBarItem(
// //               icon: Image.asset(Assets.icons.profile.path,
// //                   height: 24.w, width: 24.h),
// //               label: '')
// //         ],
// //       ),
// //     );
// //   }
// // }
//
//
//
// import 'package:flutter/material.dart';
// import 'package:shotter_app/feature/challange_section/presentation/adding_details_task.dart';
// import 'package:shotter_app/feature/challange_section/presentation/challange.dart';
// import 'package:shotter_app/gen/colors.gen.dart';
// import '../../../gen/assets.gen.dart';
// import '../feature/challange_section/presentation/complete_padding_screen.dart';
// import '../feature/challange_section/presentation/design_page.dart';
// import '../feature/give_task_Screen/presentation/select_challange_partner_screen.dart';
// import '../feature/profile/presentation/profile_page_screen.dart';
//
// class NavigationBarScreen extends StatefulWidget {
//   const NavigationBarScreen({super.key});
//
//   @override
//   State<NavigationBarScreen> createState() => _NavigationBarScreenState();
// }
//
// class _NavigationBarScreenState extends State<NavigationBarScreen> {
//   int index = 0;  // Corrected variable name
//   final List _pageList = [
//   ChallengeScreen(),
//     AddingDetailsTaskScreen(),
//     SelectChallengePartnerScreen(),
//     DesignPageScreen(),
//     ProfilePageScreen(),
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: _pageList[index],
//       backgroundColor: Colors.black,
//
//       bottomNavigationBar: BottomNavigationBar(
//         backgroundColor: Colors.transparent,
//         showUnselectedLabels: true,  // Show labels for unselected items
//         type: BottomNavigationBarType.fixed,  // Fixed type for equal spacing
//         selectedItemColor: Colors.blue,  // Selected icon and label color
//         selectedLabelStyle: TextStyle(color: Colors.blue, fontSize: 14),  // Selected label style
//         unselectedItemColor: Color(0xFF192A48),  // Unselected icon color
//         unselectedLabelStyle: TextStyle(color: Color(0xFF192A48), fontSize: 14),  // Unselected label style
//         enableFeedback: false,  // Enable feedback (true for haptic feedback)
//
//
//         elevation: 0,
//         items: [
//           BottomNavigationBarItem(
//
//             icon: Image.asset(Assets.icons.home.path, height: 30, color: index == 0 ?  AppColors.cAFFF00: AppColors.cFFFFFF),
//             label: 'Home',
//             backgroundColor: Colors.black,
//           ),
//           BottomNavigationBarItem(
//             icon: Image.asset(Assets.icons.picturk.path, height: 30, color: index == 1 ?  AppColors.cAFFF00: Colors.grey),
//             label: 'Chat',
//             backgroundColor: Colors.white,
//           ),
//           BottomNavigationBarItem(
//             icon: Image.asset(Assets.icons.time2k.path, height: 30, color: index == 2 ? AppColors.cAFFF00: Colors.grey),
//             label: 'add',
//             backgroundColor: Colors.white,
//           ),
//           BottomNavigationBarItem(
//             icon: Image.asset(Assets.icons.accountNotification.path, height: 30, color: index == 3 ? AppColors.cAFFF00: Colors.grey),
//             label: 'Person',
//             backgroundColor: Colors.white,
//           ),
//         ],
//         currentIndex: index,
//         onTap: (int selectedIndex) {
//           setState(() {
//             index = selectedIndex;  // Update the index when a tab is selected
//           });
//         },
//       ),
//     );
//   }
// }
//
