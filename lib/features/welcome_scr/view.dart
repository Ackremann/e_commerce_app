import 'package:e_commerce_app/const/colors/colors.dart';

import 'package:e_commerce_app/features/signup/view.dart';

import 'package:flutter/material.dart';
part 'units/profile_pic.dart';
part 'units/changepic_button.dart';
part 'units/skip_button.dart';

part 'units/uplaodpic_button.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({Key? key}) : super(key: key);

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
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.only(
                    top: 50,
                    bottom: 50,
                  ),
                  child: _ProfilePic(),
                ),
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 50,
                  child: Icon(
                    Icons.self_improvement_rounded,
                    size: 70,
                    color: mainColor,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: _ChangePicButton(),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 100,
                  ),
                  child: _UploadPicButton(),
                ),
                _SkipButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
