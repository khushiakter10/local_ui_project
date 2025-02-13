import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:training_app/gen/colors.gen.dart';
import 'package:training_app/helpers/ui_helpers.dart';
import '../../../constants/text_font_style.dart';
import '../../../gen/assets.gen.dart';
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
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
                  ),
                  child: SingleChildScrollView(
                    padding: EdgeInsets.symmetric(vertical: 18.0.h, horizontal: 20.w),
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
                                    side: BorderSide(
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
                            Image.asset(Assets.images.meditationRound.path, height: 30),
                            UIHelper.horizontalSpace(10.w),
                            Text("Hagia Sophia", style: TextFontStyle.c342979montserrat14),
                            Spacer(),
                            Image.asset(Assets.images.upload.path, height: 30.h),
                            UIHelper.horizontalSpace(10.w),
                            Image.asset(Assets.images.save.path, height: 30.h)
                          ],
                        ),
                        UIHelper.verticalSpace(15.h),
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 85.h, horizontal: 10.w),
                          decoration: BoxDecoration(
                              image: DecorationImage(image: AssetImage(Assets.images.homeImage7.path))),
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
                                        image: AssetImage(Assets.images.oneimage.path),
                                        fit: BoxFit.cover,
                                      ),
                                      borderRadius: BorderRadius.circular(13.r)
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        UIHelper.verticalSpace(12.h),
                        Text("Landmark - Mosque", style: TextFontStyle.c342979montserrat10),
                        UIHelper.verticalSpace(5.h),
                        Row(
                          children: [
                            RatingBar.builder(
                              itemSize: 12.h,
                              initialRating: 3.5,
                              minRating: 1,
                              direction: Axis.horizontal,
                              itemCount: 5,
                              itemPadding: EdgeInsets.symmetric(horizontal: 2),
                              itemBuilder: (context, _) => Image.asset(
                                  Assets.icons.grystar.path,
                                  height: 5,
                                  color: AppColors.c5C5490),
                              onRatingUpdate: (rating) {
                                if (kDebugMode) print(rating);
                              },
                            ),
                            UIHelper.horizontalSpace(7.w),
                            Text("720", style: TextFontStyle.w600cB7B9D7montserratmap9.copyWith(
                                color: Color(0xffcB7B9D7), fontSize: 14)),
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
                              padding: EdgeInsets.all(4),
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
                        // Add TabBarView for tabs content
                        Container(
                          height: 200.h, // Adjust the height for TabBarView content
                          child: const TabBarView(
                            children: [
                              Center(child: Text("City Themes Content")),
                              Center(child: Text("About City Content")),
                            ],
                          ),
                        ),
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
