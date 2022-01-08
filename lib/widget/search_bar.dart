import 'package:e_commerce_app/const/responsive.dart';
import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  // final TextEditingController textController;
  final String hintText;

  const SearchBar({required this.hintText, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: sizeFromWidth(context, 1.2),
      padding: EdgeInsets.all(20),
      // decoration: BoxDecoration(boxShadow: [
      //   BoxShadow(
      //       offset: const Offset(12, 26),
      //       blurRadius: 50,
      //       spreadRadius: 0,
      //       color: Colors.grey.withOpacity(.1)),
      // ]),
      child: TextField(
        // controller: textController,

        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.search,
            color: Colors.grey[500]!,
          ),
          filled: true,
          fillColor: Colors.white,
          hintText: hintText,
          hintStyle: const TextStyle(
              color: Colors.grey, fontWeight: FontWeight.w300, fontSize: 12),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(25.0)),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey[300]!, width: 1.0),
            borderRadius: BorderRadius.all(Radius.circular(25.0)),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey[400]!, width: 1.5),
            borderRadius: BorderRadius.all(Radius.circular(25.0)),
          ),
        ),
      ),
    );
  }
}
