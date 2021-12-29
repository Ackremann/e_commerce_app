part of '../view.dart';

class SignInSplashButton extends StatelessWidget {
  const SignInSplashButton({
    Key? key,
  }) : super(key: key);

  // final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () async {
        await Navigator.of(context).push(
          MaterialPageRoute(
            fullscreenDialog: true,
            builder: (context) {
              return LoginView();
            },
          ),
        );
      },
      child: const Text(
        'SIGN IN',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
