part of '../view.dart';

class LogoSignup extends StatelessWidget {
  const LogoSignup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          CircleAvatar(
            backgroundColor: Colors.white,
            radius: 30,
            child: Icon(
              Icons.self_improvement_rounded,
              size: 50,
              color: mainColor,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            'Ackreman',
            style: TextStyle(
                fontSize: 15, fontWeight: FontWeight.w600, color: Colors.white),
          ),
        ],
      ),
    );
    ;
  }
}
