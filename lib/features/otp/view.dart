import 'package:e_commerce_app/const/colors/colors.dart';
import 'package:e_commerce_app/widget/grediant_button.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
part 'units/otplogo.dart';
part 'units/otp.dart';
part 'units/verifay_button.dart';

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
                const _OtpLogo(),
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
                          padding: const EdgeInsets.only(
                              top: 30, right: 30, left: 30, bottom: 15),
                          child: Text('OTP VERIFICATION ',
                              style: TextStyle(
                                  color: mainColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 19)),
                        ),
                        const Text(
                          'OTP has been sent to 9979409958',
                        ),
                        const _OtpCode(),
                        _VerifyButton(onPressed: () {}),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('00:30'),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                'Resend OTP',
                                style: TextStyle(color: mainColor),
                              ),
                            ),
                          ],
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
