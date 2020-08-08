import 'package:flutter/material.dart';

Widget layoutCartShopping(List<Widget> widgetForPlace) {
  return SafeArea(
      child: SingleChildScrollView(
          child: Container(
              padding: EdgeInsets.all(10),
              child: Column(children: widgetForPlace))));
}

