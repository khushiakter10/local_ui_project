import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:training_app/common_widgets/custom_text_formfild.dart';
import 'package:training_app/helpers/all_routes.dart';
import 'package:training_app/helpers/navigation_service.dart';
import '../../../../../constants/text_font_style.dart';
import '../../../../../gen/assets.gen.dart';
import '../../../../../gen/colors.gen.dart';
import '../../../../../helpers/ui_helpers.dart';
class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}
class _LogInScreenState extends State<LogInScreen>{
  bool checkbox1 = true;
  bool checkbox2 = false;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: AppColors.cF7F7F7,
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(vertical: 18.0.h, horizontal: 15.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              UIHelper.verticalSpace(110.h),
             // Image.asset(Assets.images.localaicolorimage.path,height: 100,),
             //  Container(
             //    height: 60.h,
             //    decoration: BoxDecoration(
             //      borderRadius: BorderRadius.circular(30.r),
             //      color: AppColors.cFFFFFF,
             //    ),
             //    child: Padding(
             //      padding: EdgeInsets.all(4.sp),
             //      child: TabBar(
             //        padding: EdgeInsets.all(4),
             //        dividerColor: Colors.transparent,
             //        labelColor: Colors.white,
             //        unselectedLabelColor: Colors.black54,
             //        indicator: BoxDecoration(
             //          color: AppColors.c342979,
             //          borderRadius: BorderRadius.circular(11.r),
             //        ),
             //        indicatorSize: TabBarIndicatorSize.tab,
             //        labelStyle: TextStyle(
             //            fontSize: 16.sp, fontWeight: FontWeight.w600),
             //        unselectedLabelStyle: TextStyle(
             //            fontSize: 16.sp, fontWeight: FontWeight.w400),
             //        tabs: const [
             //          Tab(text: 'City Themes'),
             //          Tab(text: 'About City'),
             //        ],
             //      ),
             //    ),
             //  ),
              UIHelper.verticalSpace(10.h),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomTextFormFild(
                  labelText: "Email",
                  lebaleStyleColor: TextFontStyle.headlinepassc7978B4,
                  filled: true,
                  fillColor: AppColors.cFFFFFF,
                  hintText: "bd @ gmail.com",
                  hinStyleColor: TextFontStyle.headlinepassc7978B4,
                  focuseBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.r),
                    borderSide: BorderSide.none
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.r),
                    borderSide: BorderSide.none
                  ),
                ),
              ),
              UIHelper.verticalSpace(20.h),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 22.w,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 140.w,
                      height: 50.h,
                      decoration: ShapeDecoration(
                        color: AppColors.cFFFFFF,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 15.h, horizontal: 15.w),
                        child: Text("Name",
                            style: TextFontStyle.headlinepassc7978B4),
                      ),
                    ),
                    UIHelper.horizontalSpace(20.w),
                    Container(
                      width: 140.w,
                      height: 50.h,
                      decoration: ShapeDecoration(
                        color: AppColors.cFFFFFF,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 15.h, horizontal: 15.w),
                        child: Text("Surname",
                            style: TextFontStyle.headlinepassc7978B4),
                      ),
                    ),
                  ],
                ),
              ),
              UIHelper.verticalSpace(20.h),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomTextFormFild(
                  sufixIcon:  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      Assets.icons.regtanglebox.path,
                      height: 20,
                    ),
                  ) ,
                  labelText: "Email",
                  lebaleStyleColor: TextFontStyle.headlinepassc7978B4,
                  filled: true,
                  fillColor: AppColors.cFFFFFF,
                  hintText: "bd @ gmail.com",
                  hinStyleColor: TextFontStyle.headlinepassc7978B4,
                  focuseBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.r),
                      borderSide: BorderSide.none
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.r),
                      borderSide: BorderSide.none
                  ),
                ),
              ),
              UIHelper.verticalSpace(15.h),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomTextFormFild(
                  labelText: "Paasword",
                  lebaleStyleColor: TextFontStyle.headlinepassc7978B4,
                  filled: true,
                  fillColor: AppColors.cFFFFFF,
                  hintText: "Create password",
                  hinStyleColor: TextFontStyle.headlinepassc7978B4,
                  focuseBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.r),
                      borderSide: BorderSide.none
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.r),
                      borderSide: BorderSide.none
                  ),
                ),
              ),
              UIHelper.verticalSpace(18.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 47.w),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 10.h,
                          width: 10.w,
                          decoration: BoxDecoration(
                              color: AppColors.cB7B9D7,
                              borderRadius: BorderRadius.circular(30.r)),
                        ),
                        UIHelper.horizontalSpace(12.w),
                        Text(
                          "Min. 6 - Max. 16 Characters",
                          style: TextFontStyle.headlinepassc7978B4
                              .copyWith(color: const Color(0xffc7978b4), fontSize: 10),
                        ),
                      ],
                    ),
                    UIHelper.verticalSpace(7.h),
                    Row(
                      children: [
                        Container(
                          height: 10.h,
                          width: 10.w,
                          decoration: BoxDecoration(
                              color: AppColors.cB7B9D7,
                              borderRadius: BorderRadius.circular(30.r)),
                        ),
                        UIHelper.horizontalSpace(12.w),
                        Text(
                          "At Least 1 Uppercase Letter & 1 Number",
                          style: TextFontStyle.headlinepassc7978B4
                              .copyWith(color: const Color(0xffc7978b4), fontSize: 10),
                        ),
                      ],
                    ),
                    UIHelper.verticalSpace(7.h),
                    Row(
                      children: [
                        Container(
                          height: 10.h,
                          width: 10.w,
                          decoration: BoxDecoration(
                              color: AppColors.cB7B9D7,
                              borderRadius: BorderRadius.circular(30.r)),
                        ),
                        UIHelper.horizontalSpace(12.w),
                        Text(
                          "Non-sequential Letters and Numbers",
                          style: TextFontStyle.headlinepassc7978B4.copyWith(
                              color: const Color(0xffc7978b4), fontSize: 10.sp),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              UIHelper.verticalSpace(15.h),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomTextFormFild(
                  labelText: "Paasword",
                  lebaleStyleColor: TextFontStyle.headlinepassc7978B4,
                  filled: true,
                  fillColor: AppColors.cFFFFFF,
                  hintText: "Repeat Password",
                  hinStyleColor: TextFontStyle.headlinepassc7978B4,
                  focuseBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.r),
                      borderSide: BorderSide.none
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.r),
                      borderSide: BorderSide.none
                  ),
                ),
              ),
              UIHelper.verticalSpace(15.h),
              Row(
                children: [
                  Center(
                    child: Transform.scale(
                      scale: 1.7,
                      child: Checkbox(
                        shape: OutlinedBorder.lerp(
                            const RoundedRectangleBorder(), const CircleBorder(), 0.33.r),
                        side: const BorderSide(color: AppColors.cB7B9D7, width: 1),
                        activeColor: AppColors.cFFFFFF,
                        checkColor: AppColors.c000000,
                        value: checkbox1,
                        onChanged: (newValue) {
                          setState(() {
                            checkbox1 = newValue!;
                          });
                        },
                      ),
                    ),
                  ),
                  Text("I have read and accept the terms of use.",
                      style: TextFontStyle.headlineaccept8c5C5490
                          .copyWith(color: const Color(0xffc5c5490), fontSize: 11.sp)),
                ],
              ),
              Row(
                children: [
                  Center(
                    child: Transform.scale(
                      scale: 1.7,
                      child: Checkbox(
                        shape: OutlinedBorder.lerp(
                            const RoundedRectangleBorder(), const CircleBorder(), 0.33.r),
                        side: const BorderSide(color: AppColors.cB7B9D7, width: 1),
                        activeColor: AppColors.cFFFFFF,
                        checkColor: AppColors.c000000,
                        value: checkbox2,
                        onChanged: (newValue) {
                          setState(() {
                            checkbox1 = newValue!;
                          });
                        },
                      ),
                    ),
                  ),
                  Text("I have read and accept the terms of use.",
                      style: TextFontStyle.headlineaccept8c5C5490
                          .copyWith(color: const Color(0xffc5c5490), fontSize: 11)),
                ],
              ),
              UIHelper.verticalSpace(20.h),
              GestureDetector(
                onTap: (){
                  NavigationService.navigateTo(Routes.signUpScreen);
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 27, vertical: 12),
                  decoration: ShapeDecoration(
                    color: const Color(0xFF5C5490),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  child: Text(
                    "Sign up",
                    style: TextFontStyle.headlinecontinuc7978B4,
                  ),
                ),
              ),
              UIHelper.verticalSpace(20.h),
              Container(
                  padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 10.w),
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                  ),
                  child: Padding(
                    padding:  const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        Text(
                          "To sign up or log in quickly;",
                          style: TextFontStyle.headlineremeberc5C5490,
                        ),
                        UIHelper.verticalSpace(15.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 11.h, horizontal: 10.w),
                              decoration: ShapeDecoration(
                                  color: AppColors.cF7F7F7,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(33.r),
                                  )),
                              child: Row(
                                children: [
                                  Image.asset(Assets.icons.goggle.path,
                                      height: 10.h),
                                  UIHelper.horizontalSpace(4.w),
                                  Text("Google",
                                      style: TextFontStyle.headlinegooglec464969
                                          .copyWith(
                                              color: const Color(0xffc464969),
                                              fontSize: 12)
                                  )
                                ],
                              ),
                            ),
                            UIHelper.horizontalSpace(7.w),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 11.h, horizontal: 10.w),
                              decoration: ShapeDecoration(
                                  color: AppColors.cF7F7F7,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(33.r),
                                  )),
                              child: Row(
                                children: [
                                  Image.asset(Assets.icons.apple.path,
                                      height: 10.h),
                                  UIHelper.horizontalSpace(4.w),
                                  Text("Apple",
                                      style: TextFontStyle.headlinegooglec464969
                                          .copyWith(
                                              color: const Color(0xffc464969),
                                              fontSize: 12))
                                ],
                              ),
                            ),
                            UIHelper.horizontalSpace(7.w),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 11.h, horizontal: 9.w),
                              decoration: ShapeDecoration(
                                  color: AppColors.cF7F7F7,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(33.r),
                                  )),
                              child: Row(
                                children: [
                                  Image.asset(Assets.icons.fachbook.path,
                                      height: 10.h),
                                  UIHelper.horizontalSpace(4.w),
                                  Text("Facebook",
                                      style: TextFontStyle.headlinegooglec464969
                                          .copyWith(
                                              color: const Color(0xffc464969),
                                              fontSize: 11))
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )),
              UIHelper.verticalSpace(70.h),
            ],
          ),
        ),
      ),
    );
  }
}
