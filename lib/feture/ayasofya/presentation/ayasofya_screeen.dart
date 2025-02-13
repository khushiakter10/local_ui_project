import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:training_app/gen/colors.gen.dart';
import 'package:training_app/helpers/navigation_service.dart';
import 'package:training_app/helpers/ui_helpers.dart';
import '../../../constants/text_font_style.dart';
import '../../../gen/assets.gen.dart';
import '../../../helpers/all_routes.dart';

class AyaTolLahsScreen extends StatefulWidget {
  const AyaTolLahsScreen({super.key});

  @override
  State<AyaTolLahsScreen> createState() => _AyaTolLahsScreenState();
}

class _AyaTolLahsScreenState extends State<AyaTolLahsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            builder: (BuildContext context, ScrollController scrollController) {
              return Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
                ),
                child: SingleChildScrollView(
                  padding:
                  EdgeInsets.symmetric(vertical: 18.0.h, horizontal: 20.w),
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
                          Text("Ayatollahs",
                              style: TextFontStyle.c342979montserrat14),
                          const Spacer(),
                          Image.asset(Assets.images.upload.path,height: 30.h),
                          UIHelper.horizontalSpace(10.w),
                          Image.asset(Assets.images.save.path,height: 30.h,)
                        ],
                      ),
                      UIHelper.verticalSpace(15.h),
                      GestureDetector(
                        onTap: () {
                          NavigationService.navigateTo(Routes.landMarkScreen);
                        },
                        child: Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 85.h, horizontal: 10.w),
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        Assets.images.homeImage7.path)))),
                      ),
                      UIHelper.verticalSpace(10.h),

                      SizedBox(
                        height: 70.h,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 10,
                          shrinkWrap: true,
                          itemBuilder: (BuildContext,index) {
                            return Padding(
                              padding:  EdgeInsets.only(right: 9.0.r),
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
                      Text("The Sacred Sites of the City",style: TextFontStyle.c342979montserrat10),
                      UIHelper.verticalSpace(2.h),
                      Text(
                        "Lorem Ipsum",
                        style: TextFontStyle
                            .w600cB7B9D7montserratmap9,
                      ),
                      UIHelper.verticalSpace(5.h),
                      Row(
                        children: [
                          RatingBar.builder(
                            itemSize: 12.h,
                            initialRating: 3.5,
                            minRating: 1,
                            direction: Axis.horizontal,
                            itemCount: 5,
                            itemPadding:
                            const EdgeInsets.symmetric(
                                horizontal: 2),
                            itemBuilder: (context, _) =>
                                Image.asset(
                                    Assets.icons.grystar
                                        .path,
                                    height: 5,
                                    color: AppColors
                                        .c5C5490),
                            onRatingUpdate: (rating) {
                              if (kDebugMode)
                                print(rating);
                            },
                          ),
                          UIHelper.horizontalSpace(7.w),
                          Text("720",
                              style: TextFontStyle
                                  .w600cB7B9D7montserratmap9
                                  .copyWith(
                                  color: const Color(
                                      0xffcb7b9d7),
                                  fontSize: 14)),
                        ],
                      ),

                      UIHelper.verticalSpace(25.h),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
