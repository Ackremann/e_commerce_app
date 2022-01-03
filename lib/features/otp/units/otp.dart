part of '../view.dart';

class _OtpCode extends StatelessWidget {
  const _OtpCode({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 60),
      child: PinCodeTextField(
        keyboardType: TextInputType.number,
        enablePinAutofill: true,
        length: 4,
        obscureText: false,
        animationType: AnimationType.fade,
        pinTheme: PinTheme(
          borderRadius: BorderRadius.circular(10),
          inactiveColor: Colors.black26,
          inactiveFillColor: Colors.red,
          selectedColor: Colors.blue,
          fieldHeight: 50,
          fieldWidth: 40,
          shape: PinCodeFieldShape.box,
          // activeFillColor: kWhiteColors,
          // activeColor: kPrimaryColors,
        ),
        boxShadows: [
          BoxShadow(
              // offset: Offset(0, 1),
              color: Colors.white,
              spreadRadius: 2
              // blurRadius: 10,
              )
        ],
        onCompleted: (v) {
          print("Completed");
        },
        appContext: context,
        onChanged: (String value) {},
      ),
    );
  }
}
