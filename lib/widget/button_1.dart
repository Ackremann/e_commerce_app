import 'package:flutter/material.dart';

class Button1 extends StatelessWidget {
  const Button1({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        
          minimumSize: Size(
            MediaQuery.of(context).size.width / 1.8,
            40,
          ),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
      onPressed: () {},
      child: Text(text),
    );
  }
}
