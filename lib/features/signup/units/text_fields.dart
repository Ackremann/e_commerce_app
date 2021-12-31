part of '../view.dart';

class _SignupTextFields extends StatelessWidget {
  const _SignupTextFields({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: AppTextField(
              keyboardType: TextInputType.name, label: 'Enter Name'),
        ),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: AppTextField(
              keyboardType: TextInputType.name, label: 'Enter Email'),
        ),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: AppTextField(
              keyboardType: TextInputType.name, label: 'Enter Mobile'),
        ),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: AppTextField(
              keyboardType: TextInputType.name, label: 'Enter Password'),
        ),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: AppTextField(
              keyboardType: TextInputType.name, label: 'Confirm Password'),
        ),
      ],
    );
  }
}
