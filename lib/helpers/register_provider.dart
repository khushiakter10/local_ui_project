import 'package:provider/provider.dart';
import 'package:training_app/providers/auth_providers.dart';
import 'package:training_app/providers/boost_video_screen_provider.dart';
import 'package:training_app/providers/challange_details_screen_provider.dart';
import 'package:training_app/providers/challange_execution_camera_screen_provider.dart';
import 'package:training_app/providers/leader_board_screen_provider.dart';
import 'package:training_app/providers/onboarding_screen_four_provider.dart';
import 'package:training_app/providers/onboarding_screen_three_provider.dart';
import 'package:training_app/providers/plan_screen_provider.dart';

var providers = [
  ChangeNotifierProvider<AuthProviders>(create: ((context) => AuthProviders())),
  ChangeNotifierProvider<SignupScreenProvider>(
      create: ((context) => SignupScreenProvider())),
  ChangeNotifierProvider<SignupScreenProvider2>(
      create: ((context) => SignupScreenProvider2())),
  ChangeNotifierProvider<PlanScreenProvider>(
      create: ((context) => PlanScreenProvider())),
  ChangeNotifierProvider<LeaderBoardProvider>(
      create: ((context) => LeaderBoardProvider())),
  ChangeNotifierProvider<ChallangeExecutionCameraScreenProvider>(
      create: ((context) => ChallangeExecutionCameraScreenProvider())),
  ChangeNotifierProvider<BoostVideoScreenProvider>(
      create: ((context) => BoostVideoScreenProvider())),
  ChangeNotifierProvider<ChallengeDetailsScreenProvider>(
      create: ((context) => ChallengeDetailsScreenProvider())),
];
