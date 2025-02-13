import 'dart:io';
import 'package:flutter/cupertino.dart';

import '../feture/auth/otp/presentation/otp_screen.dart';
import '../feture/ayasofya/presentation/ayasofya_screeen.dart';
import '../feture/explore/presntation/explore_screen.dart';
import '../feture/landmark/presentation/landmark_screen.dart';
import '../feture/log_in_sign_up_and_sign_in/presentation/log_in/presentation/log_in_screen.dart';
import '../feture/log_in_sign_up_and_sign_in/presentation/sign_up/presentation/sign_up_screen.dart';
import '../feture/map/presentation/map_screen.dart';
import '../feture/sacredcity/presentation/sacredcity_screen.dart';
import '../feture/sortboy/presentation/sort_by_screen.dart';
import '../feture/topkapi/presentation/topkapi_screen.dart';
import '../splash_screen.dart';


final class Routes {
  static final Routes _routes = Routes._internal();
  Routes._internal();
  static Routes get instance => _routes;

  static const String splashScreen = '/splashScreen';
  static const String logInScreen = '/logInScreen';
  static const String signUpScreen = '/signUpScreen';
  static const String otpScreen = '/otpScreen';
  static const String mapScreen = '/mapScreen';
  static const String exploreScreen = '/exploreScreen';
  static const String topKapiScreen = '/topKapiScreen';
  static const String sortByScreen = '/sortByScreen';
  static const String ayaTolLahsScreen = '/ayaTolLahsScreen';
  static const String landMarkScreen = '/landMarkScreen';
  static const String sacredCityScreen = '/sacredCityScreen';

}
final class RouteGenerator {
  static final RouteGenerator _routeGenerator = RouteGenerator._internal();
  RouteGenerator._internal();
  static RouteGenerator get instance => _routeGenerator;

  static Route<dynamic>? generateRoute(RouteSettings settings) {

    switch (settings.name) {

      case Routes.splashScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(widget: const SplashScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => const SplashScreen());

case Routes.logInScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(widget: const LogInScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => const LogInScreen());

case Routes.signUpScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(widget: const SignUpScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => const SignUpScreen());

case Routes.otpScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(widget: const OtpScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => const OtpScreen());

case Routes.mapScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(widget: const MapScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => const MapScreen());


case Routes.exploreScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(widget: const ExploreScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => const ExploreScreen());

      case Routes.topKapiScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(widget: const TopKapiScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => const TopKapiScreen());


      case Routes.sortByScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(widget: const SortByScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => const SortByScreen());

 case Routes.ayaTolLahsScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(widget: const AyaTolLahsScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => const AyaTolLahsScreen());

 case Routes.landMarkScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(widget: const LandMarkScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => const LandMarkScreen());

case Routes.sacredCityScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(widget: const SacredCityScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => const SacredCityScreen());


      default:
        return null;
    }
  }
}

//  weenAnimationBuilder(
//   child: Widget,
//   tween: Tween<double>(begin: 0, end: 1),
//   duration: Duration(milliseconds: 1000),
//   curve: Curves.bounceIn,
//   builder: (BuildContext context, double _val, Widget child) {
//     return Opacity(
//       opacity: _val,
//       child: Padding(
//         padding: EdgeInsets.only(top: _val * 50),
//         child: child
//       ),
//     );
//   },
// );

class _FadedTransitionRoute extends PageRouteBuilder {
  final Widget widget;
  @override
  final RouteSettings settings;

  _FadedTransitionRoute({required this.widget, required this.settings})
      : super(
    settings: settings,
    reverseTransitionDuration: const Duration(milliseconds: 1),
    pageBuilder: (BuildContext context, Animation<double> animation,
        Animation<double> secondaryAnimation) {
      return widget;
    },
    transitionDuration: const Duration(milliseconds: 1),
    transitionsBuilder: (BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
        Widget child) {
      return FadeTransition(
        opacity: CurvedAnimation(
          parent: animation,
          curve: Curves.ease,
        ),
        child: child,
      );
    },
  );
}

class ScreenTitle extends StatelessWidget {
  final Widget widget;

  const ScreenTitle({super.key, required this.widget});

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween<double>(begin: .5, end: 1),
      duration: const Duration(milliseconds: 500),
      curve: Curves.bounceIn,
      builder: (context, value, child) {
        return Opacity(
          opacity: value,
          child: child,
        );
      },
      child: widget,
    );
  }
}
