part of '../view.dart';

class _ProfilePic extends StatelessWidget {
  const _ProfilePic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Hello Ackreman',
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.w600, color: Colors.white),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Welcaome to Ackreman',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
    ;
  }
}
