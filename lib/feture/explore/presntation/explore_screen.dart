import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:training_app/constants/text_font_style.dart';
import 'package:training_app/gen/colors.gen.dart';
import 'package:training_app/helpers/ui_helpers.dart';

import '../../../gen/assets.gen.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  final List<String> image = [
    'assets/images/home2Image.png',
    'assets/images/home2Image.png',
    'assets/images/home2Image.png',
    'assets/images/home2Image.png',
    'assets/images/home2Image.png',
    'assets/images/home2Image.png',
    'assets/images/home2Image.png',
    'assets/images/home2Image.png',
    'assets/images/home2Image.png',
  ];

  final List<String> name = [
    'Lorem Ipsum',
    'Lorem Ipsum',
    'Lorem Ipsum',
    'Lorem Ipsum',
    'Lorem Ipsum',
    'Lorem Ipsum',
    'Lorem Ipsum',
    'Lorem Ipsum',
    'Lorem Ipsum',
  ];

  final List<String> text = [
    'Lorem Ipsum',
    'Lorem Ipsum',
    'Lorem Ipsum',
    'Lorem Ipsum',
    'Lorem Ipsum',
    'Lorem Ipsum',
    'Lorem Ipsum',
    'Lorem Ipsum',
    'Lorem Ipsum',
  ];

  final List<String> icon = [
    'assets/icons/starImage.png',
    'assets/icons/starImage.png',
    'assets/icons/starImage.png',
    'assets/icons/starImage.png',
    'assets/icons/starImage.png',
    'assets/icons/starImage.png',
    'assets/icons/starImage.png',
    'assets/icons/starImage.png',
    'assets/icons/starImage.png',
  ];

  final List<String> data = [
    '720',
    '720',
    '720',
    '720',
    '720',
    '720',
    '720',
    '720',
    '720',
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: AppColors.cF7F7F7,
        body: Padding(
          padding: EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(vertical: 18.0.h, horizontal: 20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Top section (search bar, location selector)
                Row(
                  children: [
                    SizedBox(height: 250.h),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 15.w),
                      decoration: BoxDecoration(
                        color: AppColors.cEBECF0,
                        borderRadius: BorderRadius.circular(20.r),
                      ),
                      child: Row(
                        children: [
                          Image.asset(Assets.images.mapPoint.path, height: 20),
                          UIHelper.horizontalSpace(5.w),
                          Text("İstanbul", style: TextFontStyle.w600cB7B9D7montserratmap),
                          UIHelper.horizontalSpace(5.w),
                          Image.asset(Assets.images.check.path, height: 20)
                        ],
                      ),
                    ),
                    UIHelper.horizontalSpace(10.w),
                    UIHelper.horizontalSpace(6.w),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 60.w),
                      decoration: BoxDecoration(
                        color: AppColors.cEBECF0,
                        borderRadius: BorderRadius.circular(20.r),
                      ),
                      child: Row(
                        children: [
                          Image.asset(Assets.images.magnifer.path, height: 20),
                          UIHelper.horizontalSpace(5.w),
                          Text("İstanbul", style: TextFontStyle.w600cB7B9D7montserratmap),
                        ],
                      ),
                    ),
                  ],
                ),
                UIHelper.verticalSpace(20.h),
                Container(
                  height: 50.h, // Adjust height if needed
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.r),
                    color: AppColors.cFFFFFF,
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(4.sp),
                    child: TabBar(
                      padding: EdgeInsets.all(4),
                      dividerColor: Colors.transparent,
                      labelColor: Colors.white,
                      unselectedLabelColor: Colors.black54,
                      indicator: BoxDecoration(
                        color: AppColors.c342979,
                        borderRadius: BorderRadius.circular(11.r),
                      ),
                      indicatorSize: TabBarIndicatorSize.tab,
                      labelStyle: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w600),
                      unselectedLabelStyle: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w400),
                      tabs: const [
                        Tab(text: 'City Themes'),
                        Tab(text: 'About City'),
                      ],
                    ),
                  ),
                ),
                UIHelper.verticalSpace(20.h),
                // Section with grid view
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Image.asset(Assets.images.meditationRound.path, height: 24.h),
                      UIHelper.horizontalSpace(10.w),
                      Text("Lorem İpsum", style: TextFontStyle.headlinec34297910w400learn),
                      UIHelper.horizontalSpace(100.w),
                      Text("See All", style: TextFontStyle.headlinec34297910w400learn),
                      UIHelper.horizontalSpace(13.w),
                      Image.asset(Assets.images.tirimage.path, height: 20.h)
                    ],
                  ),
                ),
                UIHelper.verticalSpace(10.h),
                GridView.builder(
                  physics: NeverScrollableScrollPhysics(), // Disable scrolling within gridview
                  shrinkWrap: true,
                  itemCount: data.length,
                  scrollDirection: Axis.vertical,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 10,
                    childAspectRatio: 0.86,
                  ),
                  itemBuilder: (_, index) {
                    return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        border: Border.all(color: AppColors.cD9D0E3),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 177.w,
                            height: 140.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.r),
                              image: DecorationImage(
                                image: AssetImage(image[index]),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Column(
                            children: [
                              Text(name[index],
                                  style: TextFontStyle.headlineaccept8c5C5490
                                      .copyWith(color: Color(0xffc2D0C57))),
                              UIHelper.verticalSpace(6.h),
                              Text(text[index],
                                  style: TextFontStyle.headlinec34297910w400
                                      .copyWith(color: Color(0xffc9586A8)
                                  )
                              ),
                              UIHelper.verticalSpace(10.h),
                            ],
                          )
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
