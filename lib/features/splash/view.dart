import 'package:e_commerce_app/const/colors/colors.dart';
import 'package:e_commerce_app/core/routes/magic_router.dart';
import 'package:e_commerce_app/core/routes/routes.dart';

import 'package:e_commerce_app/features/login/view.dart';
import 'package:e_commerce_app/features/signup/view.dart';

import 'package:flutter/material.dart';
part 'units/logo.dart';
part 'units/get_started.dart';
part 'units/signin_splash_button.dart';



class SplashView extends StatelessWidget {
  SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: gradient,
        ),
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Logo(),
                SizedBox(height: MediaQuery.of(context).size.height / 6),
                const GetStatredBu(),
                SignInSplashButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
