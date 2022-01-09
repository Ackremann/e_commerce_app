import 'package:e_commerce_app/const/apptheme.dart';
import 'package:e_commerce_app/core/routes/magic_router.dart';
import 'package:e_commerce_app/features/home/view.dart';
import 'package:e_commerce_app/features/login/view.dart';
import 'package:e_commerce_app/features/otp/view.dart';
import 'package:e_commerce_app/features/signup/view.dart';
import 'package:e_commerce_app/features/splash/view.dart';
import 'package:e_commerce_app/features/welcome_scr/view.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: themeData,

      // home: SplashView(),
      // home: LoginView(),
      // home: SignupView(),
      // home: OtpView(),
      // home: WelcomeView(),
      // home: HomeView(),
      // initialRoute: RouteManager.splashView,
      navigatorKey: navigatorKey,
      onGenerateRoute: onGenerateRoute,
      home: SplashView(),
    );
  }
}
