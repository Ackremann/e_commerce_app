part of '../view.dart';

class _ChangePicButton extends StatelessWidget {
  const _ChangePicButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          primary: Colors.white,
          minimumSize: Size(
            MediaQuery.of(context).size.width / 3,
            35,
          ),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
      onPressed: () async {},
      child: Text(
        'Change Profile Picture',
        style: TextStyle(
          color: mainColor,
          fontWeight: FontWeight.w400,
          fontSize: 13,
        ),
      ),
    );
  }
}
