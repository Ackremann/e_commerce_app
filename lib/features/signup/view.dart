import 'package:e_commerce_app/const/colors/colors.dart';
import 'package:e_commerce_app/const/responsive.dart';
import 'package:e_commerce_app/core/validator/validator.dart';
import 'package:e_commerce_app/features/signup/cubit.dart';
import 'package:e_commerce_app/features/signup/states.dart';
import 'package:e_commerce_app/widget/app_textfield.dart';
import 'package:e_commerce_app/widget/grediant_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'units/logo.dart';
part 'units/next_button.dart';
part 'units/text_fields.dart';

class SignupView extends StatelessWidget {
  const SignupView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignUpCubit(),
      child: Scaffold(
        body: SafeArea(
          child: Container(
            width: sizeFromWidth(context, 1),
            height: sizeFromHeight(context, 1),
            decoration: BoxDecoration(gradient: gradient),
            child: Column(
              children: [
                const LogoSignup(),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    decoration: decoration,
                    child: SingleChildScrollView(
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
