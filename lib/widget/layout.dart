import 'package:flutter/material.dart';

class ShoppingCart {
  Widget layoutCartShopping(List<Widget> widgetForPlace) {
    return SafeArea(
        child: SingleChildScrollView(
            child: Container(
                padding: EdgeInsets.all(10),
                child: Column(children: widgetForPlace))));
  }

  Widget rowOne({Text cartDetailText, Text pointText}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        cartDetailText,
        pointText,
      ],
    );
  }
}
