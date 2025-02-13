import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../feture/auth/otp/presentation/otp_screen.dart';
import '../feture/explore/presntation/explore_screen.dart';
import '../feture/log_in_sign_up_and_sign_in/presentation/log_in/log_in_sign_up/presentation/log_in_signin_screen.dart';
import '../feture/log_in_sign_up_and_sign_in/presentation/log_in/presentation/log_in_screen.dart';
import '../feture/map/presentation/map_screen.dart';
import '../gen/assets.gen.dart';
import '../gen/colors.gen.dart';
class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    const LogInScreen(),
    const OtpScreen(),
    const LogInSignUpScreen(),
    const ExploreScreen(),
    const MapScreen(),


  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: AppColors.cFFFFFF,
        iconSize: 25,
        currentIndex: _currentIndex,
        showSelectedLabels: true,
        showUnselectedLabels: true,

        selectedItemColor: AppColors.c1C1C1C,


        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              Assets.images.compass.path,
              color: _currentIndex == 0
                  ? AppColors.cB7B9D7
                  : AppColors.c020202,
              height: 25.h,
              width: 25.w,
            ),
            label: 'Discover',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(Assets.images.userFollow.path,
              color: _currentIndex ==1 ?AppColors.c1C1C1C :AppColors.c020202,
              height: 30.h,width: 30.w,
            ),
            label: 'Follow',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              Assets.images.compass.path,
              color: _currentIndex == 2
                  ? AppColors.c1C1C1C
                  : AppColors.c020202,
              height: 25.h,
              width: 25.w,
            ),
            label: 'AI route',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(Assets.images.ai.path,
              color: _currentIndex == 3
                  ? AppColors.c1C1C1C
                  : AppColors.c020202,
              height: 25.h,
              width: 25.w,
            ),

            label: 'My routes',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(Assets.images.save.path,
              color: _currentIndex == 4
                  ? AppColors.c1C1C1C
                  : AppColors.c020202,
              height: 30.h,
              width: 30.w,),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
