import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:training_app/gen/colors.gen.dart';
import 'package:training_app/helpers/all_routes.dart';
import 'package:training_app/helpers/navigation_service.dart';
import 'package:training_app/helpers/ui_helpers.dart';
import '../../../constants/text_font_style.dart';
import '../../../gen/assets.gen.dart';
class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Stack(
          children: [
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
              builder: (BuildContext context, ScrollController scrollController) {
                return Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
                  ),
                  child: SingleChildScrollView(
                    controller: scrollController,
                    padding:  EdgeInsets.symmetric(vertical: 18.0.h,horizontal: 20.w),
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
                        UIHelper.verticalSpace(17.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 10.h, horizontal: 15.w),
                              decoration: BoxDecoration(
                                color: AppColors.cEBECF0,
                                borderRadius: BorderRadius.circular(20.r),
                              ),
                              child: Row(
                                children: [
                                  Image.asset(Assets.images.mapPoint.path, height: 20),
                                  UIHelper.horizontalSpace(5.w),
                                  Text("İstanbul",
                                      style: TextFontStyle.w600cB7B9D7montserratmap),
                                  UIHelper.horizontalSpace(5.w),
                                  Image.asset(Assets.images.check.path, height: 20)
                                ],
                              ),
                            ),
                            UIHelper.horizontalSpace(15.w),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 10.h, horizontal: 60.w),
                              decoration: BoxDecoration(
                                color: AppColors.cEBECF0,
                                borderRadius: BorderRadius.circular(20.r),
                              ),
                              child: Row(
                                children: [
                                  Image.asset(Assets.images.magnifer.path, height: 20),
                                  UIHelper.horizontalSpace(5.w),
                                  Text("İstanbul",
                                      style: TextFontStyle.w600cB7B9D7montserratmap),
                                ],
                              ),
                            ),
                          ],
                        ),
                        UIHelper.verticalSpace(20.h),
                        Container(
                          height: 60.h,
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
                        Padding(
                          padding:  EdgeInsets.symmetric(vertical: 10.h,horizontal: 10.w),
                          child: Row(
                            children: [
                              Image.asset(Assets.images.meditationRound.path,
                                  height: 24.h),
                              UIHelper.horizontalSpace(10.w),
                              Text("Lorem İpsum",
                                  style: TextFontStyle.headlinec34297910w400learn),
                              UIHelper.horizontalSpace(123.w),
                              Text("See All",
                                  style: TextFontStyle.headlinec34297910w400learn),
                              UIHelper.horizontalSpace(13.w),
                              Image.asset(Assets.images.tirimage.path, height: 20.h)
                            ],
                          ),
                        ),
                        UIHelper.verticalSpace(10.h),
                        SizedBox(
                          height: 150,
                          child: ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: 9,
                            itemBuilder: (BuildContext context,index) {
                              return   Padding(
                                padding:  const EdgeInsets.only(right: 9),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(10.r),
                                        topLeft: Radius.circular(10.r)),
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 75,
                                        width: 146,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                                topRight: Radius.circular(10.r),
                                                topLeft: Radius.circular(10.r)),
                                            image: DecorationImage(
                                                image:
                                                AssetImage(Assets.images.home4Image.path),
                                                fit: BoxFit.cover)),
                                        child: GestureDetector(
                                          onTap: (){
                                            NavigationService.navigateTo(Routes.exploreScreen);
                                          },
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.end,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(right: 10),
                                                child: Image.asset(Assets.icons.svg.path,
                                                    height: 30.h, alignment: Alignment.topRight),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 75,
                                        width: 146,
                                        decoration: const BoxDecoration(
                                          color: Colors.white,
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              UIHelper.verticalSpace(7.h),
                                              Text(
                                                "Lorem Ipsum",
                                                style: TextFontStyle.c342979montserrat10,
                                              ),
                                              Text(
                                                "Lorem Ipsum",
                                                style: TextFontStyle.w600cB7B9D7montserratmap9,
                                              ),

                                              Row(
                                                children: [
                                                  RatingBar.builder(
                                                    itemSize: 12.h,
                                                    initialRating: 3.5,
                                                    minRating: 1,
                                                    direction: Axis.horizontal,
                                                    // allowHalfRating: true,
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
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        UIHelper.verticalSpace(10.h),
                        Padding(
                          padding:  EdgeInsets.symmetric(vertical: 10.h,horizontal: 10.w),
                          child: Row(
                            children: [
                              Image.asset(Assets.images.meditationRound.path,
                                  height: 24.h),
                              UIHelper.horizontalSpace(10.w),
                              Text("Lorem İpsum",
                                  style: TextFontStyle.headlinec34297910w400learn),
                              UIHelper.horizontalSpace(123.w),
                              Text("See All",
                                  style: TextFontStyle.headlinec34297910w400learn),
                              UIHelper.horizontalSpace(13.w),
                              Image.asset(Assets.images.tirimage.path, height: 20.h)
                            ],
                          ),
                        ),
                        UIHelper.verticalSpace(10.h),
                        SizedBox(
                          height: 150,
                          child: ListView.builder(

                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: 9,
                            itemBuilder: (BuildContext context,index) {
                              return   Padding(
                                padding:  const EdgeInsets.only(right: 9),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(10.r),
                                        topLeft: Radius.circular(10.r)),
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 75,
                                        width: 146,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                                topRight: Radius.circular(10.r),
                                                topLeft: Radius.circular(10.r)),
                                            image: DecorationImage(
                                                image:
                                                AssetImage(Assets.images.home4Image.path),
                                                fit: BoxFit.cover)),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.end,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(right: 10),
                                              child: Image.asset(Assets.icons.svg.path,
                                                  height: 30.h, alignment: Alignment.topRight),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        height: 75,
                                        width: 146,
                                        decoration: const BoxDecoration(
                                          color: Colors.white,
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              UIHelper.verticalSpace(7.h),
                                              Text(
                                                "Lorem Ipsum",
                                                style: TextFontStyle.c342979montserrat10,
                                              ),
                                              Text(
                                                "Lorem Ipsum",
                                                style: TextFontStyle.w600cB7B9D7montserratmap9,
                                              ),

                                              Row(
                                                children: [
                                                  RatingBar.builder(
                                                    itemSize: 12.h,
                                                    initialRating: 3.5,
                                                    minRating: 1,
                                                    direction: Axis.horizontal,
                                                    // allowHalfRating: true,
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
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        UIHelper.verticalSpace(30.h),

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
