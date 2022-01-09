// import 'dart:math';

// import 'package:e_commerce_app/features/login/view.dart';
// import 'package:e_commerce_app/features/otp/view.dart';
// import 'package:e_commerce_app/features/signup/view.dart';
// import 'package:e_commerce_app/features/splash/view.dart';
// import 'package:e_commerce_app/features/welcome_scr/view.dart';
// import 'package:flutter/material.dart';

// class RouteManager {
//   static const String splashView = '/';
//   static const String loginView = '/loginView';
//   static const String signupView = '/signupView';
//   static const String otpView = '/otpView';
//   static const String welcomeView = '/welcomeView';

//   static Route<dynamic> generateRoute(RouteSettings settings) {
//     switch (settings.name) {
//       case splashView:
//         return MaterialPageRoute(
//           builder: (context) => SplashView(),
//         );
//       case loginView:
//         return MaterialPageRoute(
//           builder: (context) => LoginView(),
//         );
//       case signupView:
//         return MaterialPageRoute(
//           builder: (context) => SignupView(),
//         );
//       case otpView:
//         return MaterialPageRoute(
//           builder: (context) => OtpView(),
//         );
//       case welcomeView:
//         return MaterialPageRoute(
//           builder: (context) => WelcomeView(),
//         );

//       default:
//         throw const FormatException('Route not found Check Route Again');
//     }
//   }
// }
