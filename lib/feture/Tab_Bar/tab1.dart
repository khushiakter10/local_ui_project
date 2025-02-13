// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
//
// import '../../gen/colors.gen.dart';
//
// class screeentest extends StatefulWidget {
//   @override
//   _screeentestState createState() => _screeentestState();
// }
//
// class _screeentestState extends State<screeentest> {
//   String? selectedDay;
//   final Map<String, double> barHeights = {
//     "MON": 20,
//     "TUE": 30,
//     "WED": 50,
//     "THU": 60,
//     "FRI": 80,
//     "SAT": 90,
//     "SUN": 70,
//   };
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey[200],
//       body: Center(
//         child: Container(
//           padding: EdgeInsets.all(20),
//           decoration: BoxDecoration(
//             color: Colors.white,
//             borderRadius: BorderRadius.circular(10),
//             boxShadow: [
//               BoxShadow(
//                 color: Colors.black12,
//                 blurRadius: 9,
//                 spreadRadius: 2,
//               ),
//             ],
//           ),
//           width: 400,
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               SizedBox(height: 10),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   for (var day in barHeights.keys)
//                     GestureDetector(
//                       onTap: () {
//                         setState(() {
//                           selectedDay = selectedDay == day ? null : day;
//                         });
//                       },
//                       child: Column(
//                         children: [
//                           Container(
//                             padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
//                             decoration: BoxDecoration(
//                               color: selectedDay == day ? Colors.deepPurple : Colors.transparent,
//                               borderRadius: BorderRadius.circular(5),
//                             ),
//                             child: Text(
//                               day,
//                               style: TextStyle(
//                                 color: selectedDay == day ? Colors.white : Colors.deepPurple,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                           ),
//                           SizedBox(height: 5),
//                           Text(
//                             "08:00\n17:30",
//                             textAlign: TextAlign.center,
//                             style: TextStyle(color: Colors.black54, fontSize: 12),
//                           ),
//                         ],
//                       ),
//                     ),
//                 ],
//               ),
//               SizedBox(height: 10),
//               Divider(
//                 color: AppColors.cB7B9D7,
//                 thickness: 1,
//                 height: 20.h,
//               ),
//               Row(
//                 children: [
//                   Text(
//                     selectedDay != null ? "$selectedDay selected" : "It is not busy right now",
//                     style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.deepPurple),
//                   ),
//                 ],
//               ),
//               SizedBox(height: 15),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: barHeights.keys.map((day) {
//                   bool isSelected = selectedDay == day;
//                   return AnimatedContainer(
//                     duration: Duration(milliseconds: 300),
//                     width: 18,
//                     height: isSelected ? barHeights[day]! + 20 : barHeights[day]!,
//                     decoration: BoxDecoration(
//                       color: isSelected ? Colors.deepPurple : Colors.grey[300],
//                       borderRadius: BorderRadius.circular(5),
//                     ),
//                   );
//                 }).toList(),
//               ),
//               Divider(
//                 color: AppColors.cB7B9D7,
//                 thickness: 1,
//                 height: 20.h,
//               ),
//               Row(
//                 children: [
//                   Text("06"),
//                   Text("09"),
//                   Text("12"),
//                   Text("15"),
//                   Text("18"),
//                   Text("21"),
//                   Text("00"),
//                 ],
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
