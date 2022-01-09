part of '../view.dart';

class _SignupTextFields extends StatelessWidget {
  const _SignupTextFields({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cubit = SignUpCubit.of(context);
    return Form(
      key: cubit.formKey,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: AppTextField(
                validator: Validator.name,
                onSaved: (v) => cubit.name = v!,
                keyboardType: TextInputType.name,
                label: 'Enter Name'),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: AppTextField(
                validator: Validator.email,
                onSaved: (v) => cubit.email = v!,
                keyboardType: TextInputType.name,
                label: 'Enter Email'),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: AppTextField(
                validator: Validator.name,
                onSaved: (v) => cubit.name = v!,
                keyboardType: TextInputType.name,
                label: 'Enter Mobile'),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: AppTextField(
                validator: Validator.password,
                onSaved: (v) => cubit.password = v!,
                keyboardType: TextInputType.name,
                label: 'Enter Password'),
          ),
          // Padding(
          //   padding: const EdgeInsets.all(5.0),
          //   child: AppTextField(
          //     validator: '',
          //     onSaved: (){},
          //       keyboardType: TextInputType.name, label: 'Confirm Password'),
          // ),
        ],
      ),
    );
  }
}
