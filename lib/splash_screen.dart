import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:training_app/constants/text_font_style.dart';
import 'package:training_app/gen/assets.gen.dart';
import 'package:training_app/helpers/all_routes.dart';
import 'package:training_app/helpers/navigation_service.dart';
import 'package:training_app/helpers/ui_helpers.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(Assets.images.splash.path),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 18.0.h, horizontal: 15.w),
              child: Column(
                  mainAxisAlignment:
                      MainAxisAlignment.center, // Centers vertically
                  crossAxisAlignment:
                      CrossAxisAlignment.center, // Centers horizontally
                  children: [
                    Image.asset(
                      Assets.images.lokalaiimage.path,
                      height: 100.h,
                    ),
                    UIHelper.verticalSpace(25.h),
                    Container(
                      width: 195.w,
                      height: 40.h,
                      padding:
                          EdgeInsets.symmetric(horizontal: 24, vertical: 8),
                      decoration: ShapeDecoration(
                        color: Color(0xFF342979),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                      child: Center(
                        child: Text("'03 Login Page",
                            style: TextFontStyle
                                .cheadline24w400cFFFFFFStyleOpenSans),
                      ),
                    ),
                    UIHelper.verticalSpace(400.h),
                    GestureDetector(
                      onTap: (){
                        NavigationService.navigateTo(Routes.logInScreen);
                      },
                      child: Container(
                        width: 311,
                        height: 56,
                        padding: const EdgeInsets.all(16),
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(19),
                          ),
                          shadows: [
                            BoxShadow(
                              color: Color(0x3F000000),
                              blurRadius: 4.r,
                              offset: Offset(0, 1),
                              spreadRadius: 2,
                            )
                          ],
                        ),
                        child: Padding(
                          padding:  EdgeInsets.symmetric(horizontal: 10.h),
                          child: Text("01- Login Process",
                              style: TextFontStyle
                                  .loginprocesheadline16c111933Stylemontserrat),
                        ),
                      ),
                    ),
                  ]),
            )));
  }
}
