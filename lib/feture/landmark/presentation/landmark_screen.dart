import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:training_app/gen/colors.gen.dart';
import 'package:training_app/helpers/navigation_service.dart';
import 'package:training_app/helpers/ui_helpers.dart';
import '../../../constants/text_font_style.dart';
import '../../../gen/assets.gen.dart';
import '../../../helpers/all_routes.dart';

class LandMarkScreen extends StatefulWidget {
  const LandMarkScreen({super.key});

  @override
  State<LandMarkScreen> createState() => _LandMarkScreenState();
}

class _LandMarkScreenState extends State<LandMarkScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // There are two tabs
      child: Scaffold(
        body: Stack(
          children: [
            // Background image
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(Assets.images.mapImage.path),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            // DraggableScrollableSheet
            DraggableScrollableSheet(
              initialChildSize: 0.4,
              minChildSize: 0.1,
              maxChildSize: 0.8,
              builder:
                  (BuildContext context, ScrollController scrollController) {
                return Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(16)),
                  ),
                  child: SingleChildScrollView(
                    padding: EdgeInsets.symmetric(
                        vertical: 18.0.h, horizontal: 20.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 7.h),
                              child: Container(
                                width: 50,
                                decoration: ShapeDecoration(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.r),
                                    side: const BorderSide(
                                      width: 5,
                                      strokeAlign: BorderSide.strokeAlignCenter,
                                      color: AppColors.c000000,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        UIHelper.verticalSpace(10.h),
                        Row(
                          children: [
                            Image.asset(Assets.images.meditationRound.path,
                                height: 30),
                            UIHelper.horizontalSpace(10.w),
                            GestureDetector(
                              onTap: () {
                                NavigationService.navigateTo(
                                    Routes.sacredCityScreen);
                              },
                              child: Text("Hagia Sophia",
                                  style: TextFontStyle.c342979montserrat14),
                            ),
                            const Spacer(),
                            GestureDetector(
                              onTap: () {
                                NavigationService.navigateTo(
                                    Routes.sacredCityScreen);
                              },
                              child: Image.asset(Assets.images.upload.path,
                                  height: 30.h),
                            ),
                            UIHelper.horizontalSpace(10.w),
                            Image.asset(Assets.images.save.path, height: 30.h)
                          ],
                        ),
                        UIHelper.verticalSpace(15.h),
                        Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 85.h, horizontal: 10.w),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      Assets.images.homeImage7.path))),
                        ),
                        UIHelper.verticalSpace(10.h),
                        SizedBox(
                          height: 70.h,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 10,
                            shrinkWrap: true,
                            itemBuilder: (BuildContext, index) {
                              return Padding(
                                padding: EdgeInsets.only(right: 9.0.r),
                                child: Container(
                                  width: 125.w,
                                  height: 60.h,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                            Assets.images.oneimage.path),
                                        fit: BoxFit.cover,
                                      ),
                                      borderRadius:
                                          BorderRadius.circular(13.r)),
                                ),
                              );
                            },
                          ),
                        ),
                        UIHelper.verticalSpace(12.h),
                        Text("Landmark - Mosque",
                            style: TextFontStyle.c342979montserrat10),
                        UIHelper.verticalSpace(5.h),
                        Row(
                          children: [
                            RatingBar.builder(
                              itemSize: 12.h,
                              initialRating: 3.5,
                              minRating: 1,
                              direction: Axis.horizontal,
                              itemCount: 5,
                              itemPadding: const EdgeInsets.symmetric(horizontal: 2),
                              itemBuilder: (context, _) => Image.asset(
                                  Assets.icons.grystar.path,
                                  height: 5,
                                  color: AppColors.c5C5490),
                              onRatingUpdate: (rating) {
                                if (kDebugMode) print(rating);
                              },
                            ),
                            UIHelper.horizontalSpace(7.w),
                            Text("720",
                                style: TextFontStyle.w600cB7B9D7montserratmap9
                                    .copyWith(
                                        color: const Color(0xffcb7b9d7),
                                        fontSize: 14)),
                          ],
                        ),
                        UIHelper.verticalSpace(25.h),
                        Container(
                          height: 55.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.r),
                            color: AppColors.cFFFFFF,
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(4.sp),
                            child: TabBar(
                              padding: const EdgeInsets.all(4),
                              dividerColor: Colors.transparent,
                              labelColor: Colors.white,
                              unselectedLabelColor: Colors.black54,
                              indicator: BoxDecoration(
                                color: AppColors.c342979,
                                borderRadius: BorderRadius.circular(11.r),
                              ),
                              indicatorSize: TabBarIndicatorSize.tab,
                              labelStyle: TextStyle(
                                  fontSize: 16.sp, fontWeight: FontWeight.w600),
                              unselectedLabelStyle: TextStyle(
                                  fontSize: 16.sp, fontWeight: FontWeight.w400),
                              tabs: const [
                                Tab(text: 'City Themes'),
                                Tab(text: 'About City'),
                              ],
                            ),
                          ),
                        ),
                        UIHelper.verticalSpace(10.h),
                        Text(
                            "Marvel at Hagia Sophia, a Byzantine masterpiece telling tales of Istanbul's rich history. From cathedral to mosque to museum, it symbolizes the fusion of civilizations. Its awe-inspiring dome and intricate mosaics stand as relics of a storied past, etched in stone and mosaic.",
                            style: TextFontStyle.headlineremeberc5C549012),
                        UIHelper.verticalSpace(10.h),
                        Text(
                          "Reasons to visit",
                          style: TextFontStyle.c342979,
                        ),
                        UIHelper.verticalSpace(10.h),
                        Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 1.h, horizontal: 1.w),
                          decoration: BoxDecoration(
                              color: AppColors.cF7F7F7,
                              borderRadius: BorderRadius.circular(8.r),
                              border: Border.all(color: Colors.transparent)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: 32,
                                    height: 32,
                                    decoration: BoxDecoration(
                                        color: AppColors.cD4D5E7,
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(8.r),
                                            bottomRight: Radius.circular(8.r))),
                                    child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text("1.",
                                            style: TextFontStyle.c342979)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Text("Reason",
                                        style: TextFontStyle.c342979),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 17.w, vertical: 12.h),
                                child: Text(
                                    "In this vibrant city, East meets West. Explore famous landmarks like Topkapi Palace and Hagia Sophia, or all of them...",
                                    style: TextFontStyle
                                        .headlineremeberc5C5490w40013),
                              ),
                            ],
                          ),
                        ),
                        UIHelper.verticalSpace(20.h),
                        Text(
                          "Density graph",
                          style:
                              TextFontStyle.c342979, /////////////////////////
                        ),
                        UIHelper.verticalSpace(15.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text("Comments", style: TextFontStyle.c342979),
                            const Spacer(),
                            Row(
                              children: [
                                RatingBar.builder(
                                  itemSize: 12.h,
                                  initialRating: 3.5,
                                  minRating: 1,
                                  direction: Axis.horizontal,
                                  itemCount: 5,
                                  itemPadding:
                                      const EdgeInsets.symmetric(horizontal: 2),
                                  itemBuilder: (context, _) => Image.asset(
                                      Assets.icons.grystar.path,
                                      height: 5,
                                      color: AppColors.c5C5490),
                                  onRatingUpdate: (rating) {
                                    if (kDebugMode) print(rating);
                                  },
                                ),
                                UIHelper.horizontalSpace(7.w),
                                Text("720",
                                    style: TextFontStyle
                                        .w600cB7B9D7montserratmap9
                                        .copyWith(
                                            color: const Color(0xffcb7b9d7),
                                            fontSize: 14)),
                              ],
                            ),
                          ],
                        ),
                        UIHelper.verticalSpace(15.h),
                        Row(
                          children: [
                            RatingBar.builder(
                              itemSize: 12.h,
                              initialRating: 3.5,
                              minRating: 1,
                              direction: Axis.horizontal,
                              itemCount: 5,
                              itemPadding: const EdgeInsets.symmetric(horizontal: 2),
                              itemBuilder: (context, _) => Image.asset(
                                  Assets.icons.grystar.path,
                                  height: 5,
                                  color: AppColors.c5C5490),
                              onRatingUpdate: (rating) {
                                if (kDebugMode) print(rating);
                              },
                            ),
                            UIHelper.horizontalSpace(7.w),
                            LinearPercentIndicator(
                              backgroundColor: AppColors.cD4D5E7,
                              barRadius: const Radius.circular(33),
                              width: 215.0,
                              lineHeight: 11.0,
                              percent: 0.8,
                              progressColor: AppColors.c5C5490,
                            ),
                            Text("400",
                                style: TextFontStyle.cD4D5E7.copyWith(
                                    color: const Color(0xffcd4d5e7), fontSize: 15))
                          ],
                        ),
                        UIHelper.verticalSpace(4.h),
                        Row(
                          children: [
                            RatingBar.builder(
                              itemSize: 12.h,
                              initialRating: 3.5,
                              minRating: 1,
                              direction: Axis.horizontal,
                              itemCount: 5,
                              itemPadding: const EdgeInsets.symmetric(horizontal: 2),
                              itemBuilder: (context, _) => Image.asset(
                                  Assets.icons.grystar.path,
                                  height: 5,
                                  color: AppColors.c5C5490),
                              onRatingUpdate: (rating) {
                                if (kDebugMode) print(rating);
                              },
                            ),
                            UIHelper.horizontalSpace(7.w),
                            LinearPercentIndicator(
                              backgroundColor: AppColors.cD4D5E7,
                              barRadius: const Radius.circular(33),
                              width: 215.0,
                              lineHeight: 11.0,
                              percent: 0.7,
                              progressColor: AppColors.c5C5490,
                            ),
                            Text("106",
                                style: TextFontStyle.cD4D5E7.copyWith(
                                    color: const Color(0xffcd4d5e7), fontSize: 15))
                          ],
                        ),
                        UIHelper.verticalSpace(4.h),
                        Row(
                          children: [
                            RatingBar.builder(
                              itemSize: 12.h,
                              initialRating: 3.5,
                              minRating: 1,
                              direction: Axis.horizontal,
                              itemCount: 5,
                              itemPadding: const EdgeInsets.symmetric(horizontal: 2),
                              itemBuilder: (context, _) => Image.asset(
                                  Assets.icons.grystar.path,
                                  height: 5,
                                  color: AppColors.c5C5490),
                              onRatingUpdate: (rating) {
                                if (kDebugMode) print(rating);
                              },
                            ),
                            UIHelper.horizontalSpace(7.w),
                            LinearPercentIndicator(
                              backgroundColor: AppColors.cD4D5E7,
                              barRadius: const Radius.circular(33),
                              width: 215.0,
                              lineHeight: 11.0,
                              percent: 0.1,
                              progressColor: AppColors.c5C5490,
                            ),
                            Text("20",
                                style: TextFontStyle.cD4D5E7.copyWith(
                                    color: const Color(0xffcd4d5e7), fontSize: 15))
                          ],
                        ),
                        UIHelper.verticalSpace(4.h),
                        Row(
                          children: [
                            RatingBar.builder(
                              itemSize: 12.h,
                              initialRating: 3.5,
                              minRating: 1,
                              direction: Axis.horizontal,
                              itemCount: 5,
                              itemPadding: const EdgeInsets.symmetric(horizontal: 2),
                              itemBuilder: (context, _) => Image.asset(
                                  Assets.icons.grystar.path,
                                  height: 5,
                                  color: AppColors.c5C5490),
                              onRatingUpdate: (rating) {
                                if (kDebugMode) print(rating);
                              },
                            ),
                            UIHelper.horizontalSpace(7.w),
                            LinearPercentIndicator(
                              backgroundColor: AppColors.cD4D5E7,
                              barRadius: const Radius.circular(33),
                              width: 215.0,
                              lineHeight: 11.0,
                              percent: 0.2,
                              progressColor: AppColors.c5C5490,
                            ),
                            Text("40",
                                style: TextFontStyle.cD4D5E7.copyWith(
                                    color: const Color(0xffcd4d5e7), fontSize: 15))
                          ],
                        ),
                        UIHelper.verticalSpace(4.h),
                        Row(
                          children: [
                            RatingBar.builder(
                              itemSize: 12.h,
                              initialRating: 3.5,
                              minRating: 1,
                              direction: Axis.horizontal,
                              itemCount: 5,
                              itemPadding: const EdgeInsets.symmetric(horizontal: 2),
                              itemBuilder: (context, _) => Image.asset(
                                  Assets.icons.grystar.path,
                                  height: 5,
                                  color: AppColors.c5C5490),
                              onRatingUpdate: (rating) {
                                if (kDebugMode) print(rating);
                              },
                            ),
                            UIHelper.horizontalSpace(7.w),
                            LinearPercentIndicator(
                              backgroundColor: AppColors.cD4D5E7,
                              barRadius: const Radius.circular(33),
                              width: 215.0,
                              lineHeight: 11.0,
                              percent: 0.5,
                              progressColor: AppColors.c5C5490,
                            ),
                            Text("120",
                                style: TextFontStyle.cD4D5E7.copyWith(
                                    color: const Color(0xffcd4d5e7), fontSize: 15))
                          ],
                        ),

                        UIHelper.verticalSpace(15.h),

                        //////////////// Map Kaj complet hoy nai //////////////////////////

                        Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 15.h, horizontal: 10.w),
                          decoration: BoxDecoration(
                              color: AppColors.cD4D5E7,
                              borderRadius: BorderRadius.circular(8.r),
                              border: Border.all(color: Colors.transparent)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 14.w, vertical: 10.h),
                                      decoration: BoxDecoration(
                                          color: AppColors.c342979,
                                          borderRadius:
                                              BorderRadius.circular(64.r)),
                                      child: Image.asset(
                                        Assets.images.ai.path,
                                        height: 24.h,
                                      )),
                                  UIHelper.horizontalSpace(10.w),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Created with Local AI",
                                          style: TextFontStyle.c342979),
                                      Text(
                                        "Summary of All Reviews",
                                        style: TextFontStyle
                                            .headlineaccept8c5C5490,
                                      )
                                    ],
                                  )
                                ],
                              ),
                              UIHelper.verticalSpace(10.h),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 20.w),
                                child: Text(
                                    "In this vibrant city, East meets West. Explore famous landmarks like Topkapi Palace and Hagia Sophia, or all of them...",
                                    style: TextFontStyle
                                        .headlineremeberc5C5490w40013),
                              ),
                            ],
                          ),
                        ),
                        UIHelper.verticalSpace(20.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 10.h, horizontal: 20.w),
                              decoration: BoxDecoration(
                                  color: AppColors.cD4D5E7,
                                  borderRadius: BorderRadius.circular(16.r)),
                              child: Text(
                                "See other comments",
                                style: TextFontStyle.c342979w600,
                              ),
                            ),
                          ],
                        ),
                        UIHelper.verticalSpace(8.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 10.h, horizontal: 20.w),
                              decoration: BoxDecoration(
                                  color: AppColors.c342979,
                                  borderRadius: BorderRadius.circular(16.r)),
                              child: Text("Write a Comment",
                                  style: TextFontStyle
                                      .cheadline24w400cFFFFFFStyleOpenSans),
                            ),
                          ],
                        ),
                        UIHelper.verticalSpace(20.h),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
