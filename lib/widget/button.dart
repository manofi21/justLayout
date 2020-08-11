import 'package:flutter/material.dart';
import 'package:tempatMakna/widget/text.dart';

InkWell pointButton(double sizeText) {
  return InkWell(
    onTap: () {},
    child: Text(
      "14.300 point - Change Your Points",
      style: redUnderline.copyWith(fontSize: sizeText - 2),
    ),
  );
}
