import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:training_app/common_widgets/custom_text_formfild.dart';
import 'package:training_app/constants/text_font_style.dart';
import 'package:training_app/gen/colors.gen.dart';
import 'package:training_app/helpers/all_routes.dart';
import 'package:training_app/helpers/navigation_service.dart';
import 'package:training_app/helpers/ui_helpers.dart';
import '../../../../../gen/assets.gen.dart';
class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}
class _SignUpScreenState extends State<SignUpScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }
  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final _userKey = GlobalKey<FormState>();
  bool checkbox1 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cF7F7F7,
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 18.0.h, horizontal: 15.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 150.h),
            // Center(
            //     child: Image.asset(
            //   Assets.images.localaicolorimage.path,
            //   height: 100.h,
            // )
            // ),

            // UIHelper.verticalSpace(15.h),
            Form(
              key: _userKey,
              child: Column(
                children: [
                  CustomTextFormFild(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Field is empty";
                      }
                      return null;
                    },
                    controller: _nameController,
                    fillColor: AppColors.cFFFFFF,
                    filled: true,
                    focuseBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.r),
                      borderSide: const BorderSide(color: AppColors.cDFE1E6),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.r),
                      borderSide: const BorderSide(color: AppColors.cDFE1E6),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.r),
                      borderSide: const BorderSide(color: AppColors.cDFE1E6),
                    ),
                    labelText: "E-mail",
                    hintText: "Bd Calling @ gmail.com",
                    hinStyleColor: TextFontStyle.w600cB7B9D7montserrat
                        .copyWith(color: const Color(0xffcb7b9d7), fontSize: 16.sp),
                  ),
                  UIHelper.verticalSpace(10.h),
                  CustomTextFormFild(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Field is empty";
                      }
                      return null;
                    },
                    controller: _phoneController,
                    fillColor: AppColors.cFFFFFF,
                    focuseBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.r),
                        borderSide: const BorderSide(color: AppColors.cDFE1E6)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.r),
                      borderSide: const BorderSide(color: AppColors.cDFE1E6),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.r),
                      borderSide: const BorderSide(color: AppColors.cDFE1E6),
                    ),
                    labelText: "Password",
                    lebaleStyleColor: TextFontStyle.headlinepassc7978B4
                        .copyWith(color: const Color(0xffc7978b4), fontSize: 16.sp),
                    hintText: "1234567",
                    hinStyleColor: TextFontStyle.headlinepassc7978B4
                        .copyWith(color: const Color(0xffc7978b4), fontSize: 16.sp),
                  ),
                  UIHelper.verticalSpace(20.h),
                ],
              ),
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
                      value: checkbox1,
                      onChanged: (newValue) {
                        setState(() {
                          checkbox1 = newValue!;
                        });
                      },
                    ),
                  ),
                ),
                Text("Remember me",
                    style: TextFontStyle.headlineremeberc5C5490
                        .copyWith(color: const Color(0xffc5c5490), fontSize: 13)),
                UIHelper.horizontalSpace(50.w),
                Text(
                  "Forgot Password",
                  style: TextFontStyle.headlineremeberc5C5490
                      .copyWith(color: const Color(0xffc5c5490), fontSize: 13),
                )
              ],
            ),
            UIHelper.verticalSpace(30.h),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: (){
                    NavigationService.navigateTo(Routes.otpScreen);
                  },
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(vertical: 15.h, horizontal: 25.w),
                    decoration: ShapeDecoration(
                      color: const Color(0xFF5C5490),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    child: Center(
                        child: Text(
                          "Continue", style: TextFontStyle.headlinecontinuc7978B4,
                        )),
                  ),
                ),
              ],
            ),
            UIHelper.verticalSpace(60.h),

            Container(
                padding: EdgeInsets.symmetric(vertical: 26.h, horizontal: 20.w),
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                ),
                child: Column(
                  children: [
                    Text(
                      "To sign up or log in quickly;",
                      style: TextFontStyle.headlineremeberc5C5490,
                    ),
                    UIHelper.verticalSpace(25.h),
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
                )),
            UIHelper.verticalSpace(50.h),
          ],
        ),
      ),
    );
  }
}
