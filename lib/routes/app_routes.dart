import 'package:mitul_s_application188/presentation/splash_screen/splash_screen.dart';
import 'package:mitul_s_application188/presentation/splash_screen/binding/splash_binding.dart';
import 'package:mitul_s_application188/presentation/onboarding_screen/onboarding_screen.dart';
import 'package:mitul_s_application188/presentation/onboarding_screen/binding/onboarding_binding.dart';
import 'package:mitul_s_application188/presentation/login_screen/login_screen.dart';
import 'package:mitul_s_application188/presentation/login_screen/binding/login_binding.dart';
import 'package:mitul_s_application188/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:mitul_s_application188/presentation/sign_up_screen/binding/sign_up_binding.dart';
import 'package:mitul_s_application188/presentation/forgot_password_screen/forgot_password_screen.dart';
import 'package:mitul_s_application188/presentation/forgot_password_screen/binding/forgot_password_binding.dart';
import 'package:mitul_s_application188/presentation/signup_question_1_screen/signup_question_1_screen.dart';
import 'package:mitul_s_application188/presentation/signup_question_1_screen/binding/signup_question_1_binding.dart';
import 'package:mitul_s_application188/presentation/signup_question_2_screen/signup_question_2_screen.dart';
import 'package:mitul_s_application188/presentation/signup_question_2_screen/binding/signup_question_2_binding.dart';
import 'package:mitul_s_application188/presentation/signup_question_3_screen/signup_question_3_screen.dart';
import 'package:mitul_s_application188/presentation/signup_question_3_screen/binding/signup_question_3_binding.dart';
import 'package:mitul_s_application188/presentation/home_container_screen/home_container_screen.dart';
import 'package:mitul_s_application188/presentation/home_container_screen/binding/home_container_binding.dart';
import 'package:mitul_s_application188/presentation/profile_details_screen/profile_details_screen.dart';
import 'package:mitul_s_application188/presentation/profile_details_screen/binding/profile_details_binding.dart';
import 'package:mitul_s_application188/presentation/match_screen/match_screen.dart';
import 'package:mitul_s_application188/presentation/match_screen/binding/match_binding.dart';
import 'package:mitul_s_application188/presentation/chat_details_screen/chat_details_screen.dart';
import 'package:mitul_s_application188/presentation/chat_details_screen/binding/chat_details_binding.dart';
import 'package:mitul_s_application188/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:mitul_s_application188/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String onboardingScreen = '/onboarding_screen';

  static const String loginScreen = '/login_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String forgotPasswordScreen = '/forgot_password_screen';

  static const String signupQuestion1Screen = '/signup_question_1_screen';

  static const String signupQuestion2Screen = '/signup_question_2_screen';

  static const String signupQuestion3Screen = '/signup_question_3_screen';

  static const String homeContainerScreen = '/home_container_screen';

  static const String homePage = '/home_page';

  static const String profileDetailsScreen = '/profile_details_screen';

  static const String matchScreen = '/match_screen';

  static const String likesPage = '/likes_page';

  static const String searchPage = '/search_page';

  static const String chatsPage = '/chats_page';

  static const String chatDetailsScreen = '/chat_details_screen';

  static const String chatDetails1Page = '/chat_details1_page';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ),
    GetPage(
      name: onboardingScreen,
      page: () => OnboardingScreen(),
      bindings: [
        OnboardingBinding(),
      ],
    ),
    GetPage(
      name: loginScreen,
      page: () => LoginScreen(),
      bindings: [
        LoginBinding(),
      ],
    ),
    GetPage(
      name: signUpScreen,
      page: () => SignUpScreen(),
      bindings: [
        SignUpBinding(),
      ],
    ),
    GetPage(
      name: forgotPasswordScreen,
      page: () => ForgotPasswordScreen(),
      bindings: [
        ForgotPasswordBinding(),
      ],
    ),
    GetPage(
      name: signupQuestion1Screen,
      page: () => SignupQuestion1Screen(),
      bindings: [
        SignupQuestion1Binding(),
      ],
    ),
    GetPage(
      name: signupQuestion2Screen,
      page: () => SignupQuestion2Screen(),
      bindings: [
        SignupQuestion2Binding(),
      ],
    ),
    GetPage(
      name: signupQuestion3Screen,
      page: () => SignupQuestion3Screen(),
      bindings: [
        SignupQuestion3Binding(),
      ],
    ),
    GetPage(
      name: homeContainerScreen,
      page: () => HomeContainerScreen(),
      bindings: [
        HomeContainerBinding(),
      ],
    ),
    GetPage(
      name: profileDetailsScreen,
      page: () => ProfileDetailsScreen(),
      bindings: [
        ProfileDetailsBinding(),
      ],
    ),
    GetPage(
      name: matchScreen,
      page: () => MatchScreen(),
      bindings: [
        MatchBinding(),
      ],
    ),
    GetPage(
      name: chatDetailsScreen,
      page: () => ChatDetailsScreen(),
      bindings: [
        ChatDetailsBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    )
  ];
}
