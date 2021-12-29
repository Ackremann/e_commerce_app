part of '../view.dart';

class UsernameField extends StatelessWidget {
  const UsernameField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AppTextField(
      keyboardType: TextInputType.emailAddress,
      label: 'User Name',
    );
  }
}
