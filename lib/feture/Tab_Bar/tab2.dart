// import 'dart:core';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
//
// import '../../../constants/text_font_style.dart';
// import '../../../gen/assets.gen.dart';
// import '../../../gen/colors.gen.dart';
// import '../../../helpers/all_routes.dart';
// import '../../../helpers/navigation_service.dart';
// import '../../../helpers/ui_helpers.dart';
// import '../../../widget/custom_text_form.dart';
//
// class CategoriesScreen extends StatefulWidget {
//   const CategoriesScreen({super.key});
//
//   @override
//   State<CategoriesScreen> createState() => _CategoriesScreenState();
// }
//
// class _CategoriesScreenState extends State<CategoriesScreen> {
//   final List<String> image = [
//     'assets/images/vegetables11.jpg',
//     'assets/images/food.webp',
//     'assets/images/lebu.jpg',
//     'assets/images/food.webp',
//     'assets/images/food.webp',
//     'assets/images/food.webp',
//   ];
//
//   final List<String> name = [
//     'Vegetables',
//     'Fruits',
//     'Bread',
//     'Sweet',
//     'cosmetic',
//     'cof',
//   ];
//
//   final List<String> data = [
//     '(43)',
//     '(32)',
//     '(22)',
//     '(56)',
//     '(70)',
//     '(75)',
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: AppColors.cF6F5F5,
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 32.h),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               GestureDetector(
//                   onTap: (){
//                     NavigationService.goBack;
//                   },
//                   child: Image.asset(Assets.icons.a22.path, height: 20.h)),
//               Text(
//                 "Categorises",
//                 style: TextFontStyle.c2D0C57poppins
//                     .copyWith(color: const Color(0XFFc2D0C57), fontSize: 30.sp),
//               ),
//               UIHelper.verticalSpace(15.h),
//               CustomTextFormWiget(
//                 focusedBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(30.r),
//                   borderSide: const BorderSide(color: AppColors.cD9D0E3),
//                 ),
//                 border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(30.r),
//                     borderSide: BorderSide(color: AppColors.cD9D0E3)),
//                 enabledBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(30.r),
//                   borderSide: const BorderSide(color: AppColors.cD9D0E3),
//                 ),
//                 hintTxt: "Search",
//                 hinStyleColor: TextFontStyle.c9586A8search,
//                 prefixIcon: Padding(
//                   padding: const EdgeInsets.all(15.0),
//                   child: Image.asset(Assets.icons.search2.path, height: 24.h),
//                 ),
//               ),
//               GridView.builder(
//                   physics: PageScrollPhysics(),
//                   shrinkWrap: true,
//                   itemCount: data.length,
//                   scrollDirection: Axis.vertical,
//                   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                     crossAxisCount: 2,
//                     crossAxisSpacing: 12,
//                     mainAxisSpacing: 15,
//                     childAspectRatio: 0.86,
//                   ),
//                   itemBuilder: (_, index) {
//                     return GestureDetector(
//                       onTap: () {
//                         NavigationService.navigateTo(Routes.vegetables);
//                       },
//                       child: Container(
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(10.r),
//                           border: Border.all(color: AppColors.cD9D0E3),
//                         ),
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Container(
//                               width: 177.w,
//                               height: 140.h,
//                               decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(8.r),
//                                 image: DecorationImage(
//                                     image: AssetImage(image[index]),
//                                     fit: BoxFit.cover),
//                               ),
//                             ),
//                             Text(name[index],
//                                 style: TextFontStyle.c2D0C57vagitable
//                                     .copyWith(color:  Color(0xffc2D0C57))),
//
//                             UIHelper.verticalSpace(10.h),
//
//                             Text(data[index],
//                                 style: TextFontStyle.c9586A8poppins
//                                     .copyWith(color:  Color(0xffc9586A8)))
//                           ],
//                         ),
//                       ),
//                     );
//                   }),
//               UIHelper.verticalSpace(50.h),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }