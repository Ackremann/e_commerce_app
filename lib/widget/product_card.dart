import 'package:e_commerce_app/const/colors/colors.dart';
import 'package:e_commerce_app/const/responsive.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String text;
  final String imageUrl;
  final String price;
  final Function() onPressed;

  const ProductCard(
      {required this.text,
      required this.imageUrl,
      required this.price,
      required this.onPressed,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        // width: sizeFromWidth(context, 2.25),
        // height: sizeFromHeight(context, 4),
        padding: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(12.5),
          // boxShadow: [
          //   BoxShadow(

          //       offset: const Offset(10, 20),
          //       blurRadius: 10,
          //       spreadRadius: 0,
          //       color: Colors.grey.withOpacity(.05)),
          // ],
        ),
        child: Column(
          children: [
            Image.network(imageUrl, height: 59, fit: BoxFit.cover),
            const Spacer(),
            Text(text,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                )),
            //
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  price,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.shopping_cart_outlined,
                      color: mainColor,
                    ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
