part of '../view.dart';

class _OtpLogo extends StatelessWidget {
  const _OtpLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: Colors.white,
          radius: 40,
          child: Icon(
            Icons.self_improvement_outlined,
            size: 60,
            color: mainColor,
          ),
        ),
        SizedBox(height: 10),
        Text(
          'Ackreman',
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w400, color: Colors.white),
        ),
      ],
    );
    ;
  }
}
