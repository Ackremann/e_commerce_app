part of '../view.dart';

class _SkipButton extends StatelessWidget {
  const _SkipButton({
    Key? key,
  }) : super(key: key);

  // final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () async {},
      child: const Text(
        'SKIP',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
