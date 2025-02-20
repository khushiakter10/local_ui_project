import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:training_app/feture/log_in_sign_up_and_sign_in/presentation/log_in/presentation/sign_up_screen.dart';

import '../../../../../../constants/text_font_style.dart';
import '../../../../../../gen/assets.gen.dart';
import '../../../../../../gen/colors.gen.dart';
import '../../../../../../helpers/ui_helpers.dart';
import '../../presentation/log_in_screen.dart';
class LogInSignUpScreen extends StatefulWidget {
  const LogInSignUpScreen({super.key});

  @override
  State<LogInSignUpScreen> createState() => _LogInSignUpScreenState();
}

class _LogInSignUpScreenState extends State<LogInSignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: AppColors.cF7F7F7,
        body: Padding(
          padding: EdgeInsets.all(14.sp),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              UIHelper.verticalSpace(80.h),
              Center(
                child: Image.asset(
                  Assets.images.localaicolorimage.path,
                  width: 100.w,
                ),
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
                    padding: const EdgeInsets.all(4),
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
                      Tab(text: 'Login'),
                      Tab(text: 'Sign up'),
                    ],
                  ),
                ),
              ),
              UIHelper.verticalSpace(20.h),
              const Flexible(
                child: TabBarView(
                  children: [
                    LogInScreen(),
                    SignUpScreen(),
                  ],
                ),
              ),

              Container(
                decoration: BoxDecoration(
                  color: AppColors.cFFFFFF,
                  borderRadius: BorderRadius.circular(24.r),
                ),
                child: Padding(
                  padding: EdgeInsets.all(24.sp),
                  child: Column(
                    children: [
                      const Text(
                        'To sign up or log in quickly;',
                        style: TextStyle(color: Colors.red),
                      ),
                      UIHelper.verticalSpace(10.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: AppColors.cF7F7F7,
                                borderRadius: BorderRadius.circular(16.r)),
                            child: Padding(
                              padding: EdgeInsets.all(10.sp),
                              child: Row(
                                children: [
                                  SvgPicture.asset(
                                    Assets.images.applogo.path,
                                    height: 12.h,
                                    width: 12.w,
                                  ),
                                  UIHelper.horizontalSpace(4.w),
                                  Text(
                                      'Google',
                                      style: TextFontStyle.headlinegooglec464969
                                  )
                                ],
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: AppColors.cF7F7F7,
                                borderRadius: BorderRadius.circular(16.r)),
                            child: Padding(
                              padding: EdgeInsets.all(10.sp),
                              child: Row(
                                children: [
                                  SvgPicture.asset(
                                    Assets.icons.apple.path,
                                    height: 12.h,
                                    width: 12.w,
                                  ),
                                  UIHelper.horizontalSpace(4.w),
                                  Text(
                                      'Apple',
                                      style: TextFontStyle.headlinegooglec464969
                                  )
                                ],
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: AppColors.cF7F7F7,
                                borderRadius: BorderRadius.circular(16.r)),
                            child: Padding(
                              padding: EdgeInsets.all(10.sp),
                              child: Row(
                                children: [
                                  SvgPicture.asset(
                                    Assets.icons.fachbook.path,
                                    height: 12.h,
                                    width: 12.w,
                                  ),
                                  UIHelper.horizontalSpace(4.w),
                                  Text(
                                      'Facebook',
                                      style: TextFontStyle.headlinegooglec464969
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
