part of '../view.dart';

class Logo extends StatelessWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: Colors.white,
          radius: 70,
          child: Icon(
            Icons.self_improvement_rounded,
            size: 100,
            color: mainColor,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          'Ackreman',
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.w600, color: Colors.white),
        ),
      ],
    );
    ;
  }
}
