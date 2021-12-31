import 'package:e_commerce_app/const/colors/colors.dart';
import 'package:e_commerce_app/widget/app_textfield.dart';
import 'package:e_commerce_app/widget/grediant_button.dart';
import 'package:flutter/material.dart';
part 'units/logo.dart';
part 'units/next_button.dart';
part 'units/text_fields.dart';

class SignupView extends StatelessWidget {
  const SignupView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(gradient: gradient),
        child: SafeArea(
          child: Column(
            children: [
              const LogoSignup(),
              Expanded(
                child: Container(
                  width: double.infinity,
                  decoration: decoration,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Text(
                          'SIGN UP',
                          style: TextStyle(
                              color: mainColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 24),
                        ),
                      ),
                      const _SignupTextFields(),
                      _NextButton(onPressed: () {}),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
