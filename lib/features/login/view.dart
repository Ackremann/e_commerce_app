import 'package:e_commerce_app/const/colors/colors.dart';
import 'package:e_commerce_app/const/responsive.dart';
import 'package:e_commerce_app/features/login/units/sign_in_bu.dart';
import 'package:e_commerce_app/widget/app_textfield.dart';
import 'package:e_commerce_app/widget/button_1.dart';
import 'package:e_commerce_app/widget/grediant_button.dart';
import 'package:flutter/material.dart';
part 'units/logologin.dart';
// part 'units/username_field.dart';
// part 'units/password_field.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: sizeFromHeight(context, 1),
        width: sizeFromWidth(context, 1),
        decoration: BoxDecoration(
          gradient: gradient,
        ),
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.all(50),
                  child: LogoLogin(),
                ),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(25),
                        topLeft: Radius.circular(25),
                      ),
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(30),
                            child: Text('SIGN IN',
                                style: TextStyle(
                                    color: mainColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 26)),
                          ),
                          // const UsernameField(),
                          const SizedBox(height: 20),
                          // const PasswordField(),
                          const SizedBox(height: 20),
                          SignInButton(onPressed: () {}),
                          const SizedBox(height: 10),
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Forgot Password ?',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
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
