import 'package:e_commerce_app/const/colors/colors.dart';
import 'package:flutter/material.dart';
part 'units/otplogo.dart';
part 'units/otp.dart';

class OtpView extends StatelessWidget {
  const OtpView({Key? key}) : super(key: key);

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
                const Padding(
                  padding: EdgeInsets.all(50),
                  child: _OtpLogo(),
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
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(30),
                          child: Text('OTP VERIFICATION ',
                              style: TextStyle(
                                  color: mainColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 19)),
                        ),
                      ],
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
