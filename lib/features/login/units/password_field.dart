part of '../view.dart';

class PasswordField extends StatelessWidget {
  const PasswordField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AppTextField(
      keyboardType: TextInputType.emailAddress,
      label: 'Password',
    );
  }
}
