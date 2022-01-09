part of '../view.dart';

class _NextButton extends StatelessWidget {
  const _NextButton({Key? key, required this.onPressed}) : super(key: key);

  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    final cubit = SignUpCubit.of(context);
    return BlocBuilder(
      bloc: cubit,
      builder: (context, state) => state is SignUploading
          ? const CircularProgressIndicator()
          : Padding(
              padding: const EdgeInsets.all(10),
              child: GradientElevatedButton(
                onPressed: cubit.signUp,
                child: const Text('Next'),
                borderRadius: BorderRadius.circular(20),
                height: 40,
                width: MediaQuery.of(context).size.width / 1.7,
              ),
            ),
    );
  }
}
