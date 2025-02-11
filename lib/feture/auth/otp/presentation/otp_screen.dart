import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:training_app/common_widgets/custom_text_formfild.dart';
import '../../../../../constants/text_font_style.dart';
import '../../../../../gen/assets.gen.dart';
import '../../../../../gen/colors.gen.dart';
import '../../../../../helpers/ui_helpers.dart';
class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  int selectedIndex = -1;
  final List<String> otpValues = List.filled(6, '');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cF7F7F7,
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 18.0.h, horizontal: 15.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            UIHelper.verticalSpace(120.h),
            Center(
                child: Image.asset(
                  Assets.images.localaicolorimage.path,
                  height: 100.h,
                )),
            UIHelper.verticalSpace(30.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding:EdgeInsets.symmetric(vertical: 7.h, horizontal: 23.w),
                  decoration: ShapeDecoration(
                    color: AppColors.c342979,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                  ),
                  child: Center(
                      child: Text(
                        "Login",
                        style: TextFontStyle.headlogincFFFFFF10montserratw700
                            .copyWith(color: Color(0xffcFFFFFF), fontSize: 15.sp),
                      )),
                ),
                UIHelper.horizontalSpace(15.w),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 7.h,horizontal: 23.w),
                  decoration: ShapeDecoration(
                    color: AppColors.cFFFFFF,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                  ),
                  child: Center(
                      child: Text(
                        "Sign up",
                        style: TextFontStyle.headlinec34297910w400
                            .copyWith(color: Color(0xffc342979), fontSize: 15.sp),
                      )),
                ),
              ],
            ),
            UIHelper.verticalSpace(30.h),
            Padding(
              padding:  EdgeInsets.all(8.0),
              child: CustomTextFormFild(
                fillColor: AppColors.cFFFFFF,
                focuseBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.r),
                    borderSide: BorderSide(color: AppColors.cDFE1E6)),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.r),
                  borderSide: BorderSide(color: AppColors.cDFE1E6),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.r),
                  borderSide: BorderSide(color: AppColors.cDFE1E6),
                ),
                labelText: "Email",
                lebaleStyleColor: TextFontStyle.headlinepassc7978B4
                    .copyWith(color: Color(0xffc7978B4), fontSize: 16.sp),
                hintText: "Bd Calling @ gmail.com",
                hinStyleColor: TextFontStyle.headlinepassc7978B4
                    .copyWith(color: Color(0xffc7978B4), fontSize: 16.sp),
              ),
            ),
            UIHelper.verticalSpace(20.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                        backgroundColor: Colors.transparent,
                        context: context,
                        builder: (BuildContext context) {
                          return Container(
                            decoration: ShapeDecoration(
                              color: AppColors.cFFFFFF,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(30.r),
                                  topLeft: Radius.circular(30.r),
                                ),
                              ),
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 20.h),
                                  child: Container(
                                    width: 40.w,
                                    decoration: ShapeDecoration(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                            BorderRadius.circular(10.r),
                                            side: BorderSide(
                                                color: AppColors.c111933,
                                                width: 5)
                                        )
                                    ),
                                  ),
                                ),
                                Image.asset(Assets.images.apple.path),
                                UIHelper.verticalSpace(10.h),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 54, vertical: 8),
                                  decoration: ShapeDecoration(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                        BorderRadius.circular(22.r),
                                      ),
                                      color: AppColors.cEBECF0),
                                  child: Text(
                                    "f.emre.guleryuz@gmail.com",
                                    style: TextFontStyle.c342979,
                                  ),
                                ),
                                UIHelper.verticalSpace(15.h),
                                Text(
                                    "Please enter the verification code sent to \nyour email address.",
                                    style: TextFontStyle.c342979),
                                UIHelper.verticalSpace(15.h),
                                Text("Time Remaining: 2:32",
                                    style: TextFontStyle.cD4D5E7.copyWith(
                                        color: Color(0xffcD4D5E7),
                                        fontSize: 12)),
                                UIHelper.verticalSpace(30.h),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: List.generate(6, (index) {
                                    return SizedBox(
                                      width: 50.h,
                                      height: 50.w,
                                      child: TextFormField(
                                        textAlign: TextAlign.center,
                                        keyboardType: TextInputType.number,
                                        maxLength: 1,
                                        style: const TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold,
                                          color: AppColors.allPrimaryColor,
                                        ),
                                        decoration: InputDecoration(

                                          counterText: '',
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                            BorderRadius.circular(10.r),
                                            borderSide: const BorderSide(
                                              color: AppColors.allPrimaryColor,
                                              width: 2,
                                            ),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                            BorderRadius.circular(10.r),
                                            borderSide: const BorderSide(
                                              color: AppColors.allPrimaryColor,
                                              width: 2,
                                            ),
                                          ),
                                        ),
                                        onTap: () {
                                          setState(() {
                                            selectedIndex = index;
                                          });
                                        },
                                        onChanged: (value) {
                                          otpValues[index] = value;
                                          if (value.isNotEmpty && index < 5) {
                                            FocusScope.of(context).nextFocus();
                                            setState(() {
                                              selectedIndex = index + 1;
                                            });
                                          } else if (value.isEmpty && index > 0) {
                                            FocusScope.of(context).previousFocus();
                                            setState(() {
                                              selectedIndex = index - 1;
                                            });
                                          }
                                        },
                                      ),
                                    );
                                  }),
                                ),

                                UIHelper.verticalSpace(50.h),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      padding:EdgeInsets.symmetric(vertical: 7.h, horizontal: 23.w),
                                      decoration: ShapeDecoration(
                                        color: AppColors.c342979,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(8.r),
                                        ),
                                      ),
                                      child: Center(
                                          child: Text(
                                            "Login",
                                            style: TextFontStyle.headlogincFFFFFF10montserratw700
                                                .copyWith(color: Color(0xffcFFFFFF), fontSize: 15.sp),
                                          )),
                                    ),
                                  ],
                                ),
                              ],
                            ),

                          );
                        });
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 7.h,horizontal: 23.w),
                    decoration: ShapeDecoration(
                      color: AppColors.c342979,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                    ),
                    child: Center(
                        child: Text(
                          "Login",
                          style: TextFontStyle.headlogincFFFFFF10montserratw700
                              .copyWith(
                              color: Color(0xffcFFFFFF), fontSize: 15.sp),
                        )),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
