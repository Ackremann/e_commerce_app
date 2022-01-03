part of '../view.dart';

class _VerifyButton extends StatelessWidget {
  const _VerifyButton({Key? key, required this.onPressed}) : super(key: key);

  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return GradientElevatedButton(
      onPressed: () {},
      child: const Text('VERIFY OTP'),
      borderRadius: BorderRadius.circular(20),
      height: 40,
      width: MediaQuery.of(context).size.width / 1.7,
    );
  }
}
