import 'package:flutter/material.dart';

Widget dynamicImage(String image, BuildContext context) {
  return Container(
    width: MediaQuery.of(context).size.width/ 6,
    height: 70,
    decoration: BoxDecoration(image: DecorationImage(image: AssetImage(image))),
  );
}

