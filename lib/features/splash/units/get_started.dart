part of '../view.dart';

class GetStatredBu extends StatelessWidget {
  const GetStatredBu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          primary: Colors.white,
          minimumSize: Size(
            MediaQuery.of(context).size.width / 1.7,
            40,
          ),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
      onPressed: () {
        MagicRouter.navigateAndPopAll(SignupView());
      },
      child: Text(
        'Get Started',
        style: TextStyle(
          color: mainColor,
        ),
      ),
    );
  }
}
