import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:training_app/common_widgets/custom_text_formfild.dart';
import 'package:training_app/gen/colors.gen.dart';
import 'package:training_app/helpers/navigation_service.dart';
import 'package:training_app/helpers/ui_helpers.dart';
import '../../../constants/text_font_style.dart';
import '../../../gen/assets.gen.dart';
import '../../../helpers/all_routes.dart';

class SortByScreen extends StatefulWidget {
  const SortByScreen({super.key});

  @override
  State<SortByScreen> createState() => _SortByScreenState();
}

class _SortByScreenState extends State<SortByScreen> {
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
                  controller: scrollController,
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
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 6),
                        child: CustomTextFormFild(
                          fillColor: AppColors.cEBECF0,
                          filled: true,
                          focuseBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40.r),
                              borderSide: BorderSide.none),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40.r),
                            borderSide: BorderSide.none,
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40.r),
                              borderSide: BorderSide.none),
                          prefixIcon: Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Image.asset(
                              Assets.icons.magnifer.path,
                              height: 24,
                            ),
                          ),
                          hintText: "Search in the city",
                          hinStyleColor: TextFontStyle.w600cB7B9D7montserratmap,
                        ),
                      ),
                      UIHelper.verticalSpace(10.h),
                      Row(
                        children: [
                          Image.asset(Assets.images.altArrowLeft.path,
                              height: 30),
                          UIHelper.horizontalSpace(10.w),
                          Text("Historic Gems",
                              style: TextFontStyle.c342979montserrat14)
                        ],
                      ),
                      UIHelper.verticalSpace(15.h),
                      GestureDetector(
                        onTap: () {
                          NavigationService.navigateTo(Routes.topKapiScreen);
                        },
                        child: Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 85.h, horizontal: 10.w),
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        Assets.images.homeImage7.path)))),
                      ),
                      UIHelper.verticalSpace(20.h),
                      Text("Spiritual and Religious Journeys in Istanbul",
                          style: TextFontStyle.c342979montserrat14),
                      UIHelper.verticalSpace(10.h),
                      Text(
                        "Embark on a journey of spiritual discovery as you visit sacred sites and places of worship in Istanbul. Explore majestic mosques, historic churches, and other religious landmarks that offer a glimpse into the city’s spiritual heritage. Find peace and inspiration in these serene and holy places.",
                        style: TextFontStyle.headlineremeberc5C549012,
                      ),
                      UIHelper.verticalSpace(20.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 13.h, horizontal: 27.w),
                            decoration: BoxDecoration(
                              color: AppColors.cEBECF0,
                              borderRadius: BorderRadius.circular(40.r),
                            ),
                            child: Row(
                              children: [
                                Image.asset(Assets.images.outlineStarImage.path,
                                    height: 24.h),
                                UIHelper.horizontalSpace(10.w),
                                Text("Sort by score",
                                    style:
                                    TextFontStyle.w600cB7B9D7montserratmap),
                                UIHelper.horizontalSpace(20.w),
                                GestureDetector(
                                    onTap: () {
                                      showModalBottomSheet(
                                          context: context,
                                          builder: (BuildContext context) {
                                            return Container(
                                              padding: const EdgeInsets.all(20),
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                    topLeft:
                                                    Radius.circular(20.r),
                                                    topRight:
                                                    Radius.circular(20.r)),
                                              ),
                                              child: Column(
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
                                                  const SizedBox(height: 20),

                                                  ListTile(
                                                    leading: GestureDetector(
                                                      onTap: (){
                                                        NavigationService.navigateTo(Routes.ayaTolLahsScreen);
                                                      },
                                                        child: Image.asset(Assets.icons.star00.path,height: 27.h)),
                                                    title: GestureDetector(
                                                      onTap: (){
                                                        NavigationService.navigateTo(Routes.ayaTolLahsScreen);
                                                      },
                                                        child: Text('Sort by rating',style: TextFontStyle.c342979montserrat12,)),
                                                  ),
                                                  const Divider(),
                                                  ListTile(
                                                    leading: Image.asset(Assets.icons.chatRound.path,height: 27.h),
                                                    title: Text('Sort by comments',style: TextFontStyle.c342979montserrat12),
                                                  ),
                                                  const Divider(),
                                                  ListTile(
                                                    leading: Image.asset(Assets.icons.gallery.path,height: 27.h),
                                                    title: Text('Sort by photos',style: TextFontStyle.c342979montserrat12),
                                                  ),
                                                  const Divider(),
                                                  ListTile(
                                                    leading: Image.asset(Assets.icons.mapPoint.path,height: 27.h),
                                                    title: Text('Sort by my location',style: TextFontStyle.c342979montserrat12),
                                                  ),
                                                  const Divider(),
                                                ],
                                              ),
                                            );
                                          });
                                    },
                                    child: Image.asset(
                                        Assets.icons.eveniconImage.path,
                                        height: 24.h)),
                              ],
                            ),
                          ),
                        ],
                      ),
                      UIHelper.verticalSpace(25.h),
                      SizedBox(
                        height: 150,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 9,
                          itemBuilder: (BuildContext context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(right: 9),
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
                                              image: AssetImage(
                                                  Assets.images.hom5Image.path),
                                              fit: BoxFit.cover)),
                                      child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.end,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(right: 10),
                                            child: Image.asset(
                                                Assets.icons.svg.path,
                                                height: 30.h,
                                                alignment: Alignment.topRight),
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
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            UIHelper.verticalSpace(7.h),
                                            Text(
                                              "Lorem Ipsum",
                                              style: TextFontStyle
                                                  .c342979montserrat10,
                                            ),
                                            Text(
                                              "Lorem Ipsum",
                                              style: TextFontStyle
                                                  .w600cB7B9D7montserratmap9,
                                            ),
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
                                                    if (kDebugMode) {
                                                      print(rating);
                                                    }
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
                      UIHelper.verticalSpace(50.h),
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
