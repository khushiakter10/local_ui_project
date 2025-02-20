import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:training_app/constants/text_font_style.dart';
import 'package:training_app/gen/colors.gen.dart';
import 'package:training_app/helpers/all_routes.dart';
import 'package:training_app/helpers/navigation_service.dart';
import 'package:training_app/helpers/ui_helpers.dart';
import '../../../gen/assets.gen.dart';
class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});
  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: AppColors.cF7F7F7,
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(vertical: 18.0.h, horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               SizedBox(height: 70.h,),
              Row(
                children: [
                  UIHelper.horizontalSpace(9.w),
                  Container(
                    padding: EdgeInsets.symmetric(
                        vertical: 10.h, horizontal: 15.w),
                    decoration: BoxDecoration(
                      color: AppColors.cEBECF0,
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                    child: Row(
                      children: [
                        Image.asset(Assets.images.mapPoint.path, height: 19.h),
                        UIHelper.horizontalSpace(5.w),
                        Text("İstanbul",
                            style: TextFontStyle.w600cB7B9D7montserratmap),
                        UIHelper.horizontalSpace(5.w),
                        Image.asset(Assets.images.check.path, height: 19.h)
                      ],
                    ),
                  ),
                  UIHelper.horizontalSpace(28.w),
                  Container(
                    padding: EdgeInsets.symmetric(
                        vertical: 10.h, horizontal: 60.w),
                    decoration: BoxDecoration(
                      color: AppColors.cEBECF0,
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                    child: Row(
                      children: [
                        Image.asset(Assets.images.magnifer.path, height: 19.h),
                        UIHelper.horizontalSpace(5.w),
                        Text("İstanbul",
                            style: TextFontStyle.w600cB7B9D7montserratmap),
                      ],
                    ),
                  ),
                ],
              ),
              UIHelper.verticalSpace(25.h),
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
              UIHelper.verticalSpace(30.h),
              // Section with grid view
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        NavigationService.navigateTo(Routes.topKapiScreen);
                      },
                      child: Image.asset(Assets.images.meditationRound.path,
                          height: 24.h),
                    ),
                    UIHelper.horizontalSpace(10.w),
                    GestureDetector(
                      onTap: () {
                        NavigationService.navigateTo(Routes.topKapiScreen);
                      },
                      child: Text("Lorem İpsum",
                          style: TextFontStyle.headlinec34297910w400learn),
                    ),
                    UIHelper.horizontalSpace(110.w),
                    Text("See All",
                        style: TextFontStyle.headlinec34297910w400learn),
                    UIHelper.horizontalSpace(13.w),
                    Image.asset(Assets.images.tirimage.path, height: 20.h)
                  ],
                ),
              ),
              UIHelper.verticalSpace(13.h),
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
                                    child: GestureDetector(
                                      onTap: () {
                                        NavigationService.navigateTo(Routes.topKapiScreen);
                                      },
                                      child: Image.asset(Assets.icons.svg.path,
                                          height: 30.h, alignment: Alignment.topRight),
                                    ),
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
              UIHelper.verticalSpace(13.h),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Image.asset(Assets.images.meditationRound.path,
                        height: 24.h),
                    UIHelper.horizontalSpace(10.w),
                    Text("Lorem İpsum",
                        style: TextFontStyle.headlinec34297910w400learn),
                    UIHelper.horizontalSpace(110.w),
                    Text("See All",
                        style: TextFontStyle.headlinec34297910w400learn),
                    UIHelper.horizontalSpace(13.w),
                    Image.asset(Assets.images.tirimage.path, height: 20.h)
                  ],
                ),
              ),
              UIHelper.verticalSpace(13.h),
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
              UIHelper.verticalSpace(13.h),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Image.asset(Assets.images.meditationRound.path,
                        height: 24.h),
                    UIHelper.horizontalSpace(10.w),
                    Text("Lorem İpsum",
                        style: TextFontStyle.headlinec34297910w400learn),
                    UIHelper.horizontalSpace(110.w),
                    Text("See All",
                        style: TextFontStyle.headlinec34297910w400learn),
                    UIHelper.horizontalSpace(13.w),
                    Image.asset(Assets.images.tirimage.path, height: 20.h)
                  ],
                ),
              ),
              UIHelper.verticalSpace(13.h),
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
                                                fontSize: 14.sp)),
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
              UIHelper.verticalSpace(10.h)
            ],
          ),
        ),
      ),
    );
  }
}
