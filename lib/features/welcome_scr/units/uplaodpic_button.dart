part of '../view.dart';

class _UploadPicButton extends StatelessWidget {
  const _UploadPicButton({Key? key}) : super(key: key);

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
      onPressed: () async {
        await Navigator.of(context).push(
          MaterialPageRoute(
            fullscreenDialog: true,
            builder: (context) {
              return SignupView();
            },
          ),
        );
      },
      child: Text(
        'Upload picture',
        style: TextStyle(
          color: mainColor,
        ),
      ),
    );
  }
}
