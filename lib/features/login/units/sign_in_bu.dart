import 'package:e_commerce_app/widget/grediant_button.dart';
import 'package:flutter/material.dart';

class SignInButton extends StatelessWidget {
  const SignInButton({Key? key, required this.onPressed}) : super(key: key);

  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return GradientElevatedButton(
      onPressed: () {},
      child: const Text('SIGN IN'),
      borderRadius: BorderRadius.circular(20),
      height: 40,
      width: MediaQuery.of(context).size.width / 1.7,
    );
  }
}
