import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';
import 'package:tempatMakna/constant.dart';
import 'tapdart.dart';

class HomeScreen extends StatelessWidget {
  static const menuItems = <String>['Paxel'];

// --add array to List_DropdownMenuItem
  final List<DropdownMenuItem<String>> _dropDownMenuItems = menuItems
      .map(
        (String value) => DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        ),
      )
      .toList();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: red,
          leading: Icon(Icons.arrow_back),
          title: Text("Shopping Cart")),
      bottomNavigationBar: buildBottomAppBar(context),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Cart Details",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "14.300 point - Change Your Points",
                    style: TextStyle(
                        color: Colors.red,
                        decoration: TextDecoration.underline),
                  )
                ],
              ),
              Divider(),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 5, right: 8),
                    child: SizedBox(
                      width: 20,
                      child: Checkbox(value: false, onChanged: (value) {}),
                    ),
                  ),
                  fotoMakanan("assets/ayamCabeIjo.jpeg", 'Ayam Cabe Ijo',
                      '2 Sachet(s)'),
                  Spacer(),
                  Text(
                    "Rp. 225.000",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 35, bottom: 20),
                child: Dash(
                    direction: Axis.horizontal,
                    length: MediaQuery.of(context).size.width - 55,
                    dashLength: 4,
                    dashColor: Colors.grey),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 5, right: 8),
                    child: SizedBox(
                      width: 20,
                      child: Checkbox(value: false, onChanged: (value) {}),
                    ),
                  ),
                  fotoMakanan("assets/oporAyam.jpg", "Opor Ayam \nKuah Pedas",
                      "3 Tray(s)"),
                  Spacer(),
                  Text(
                    "Rp. 355.000",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                        fontSize: 12),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 35, bottom: 10),
                child: Dash(
                    direction: Axis.horizontal,
                    length: MediaQuery.of(context).size.width - 55,
                    dashLength: 4,
                    dashColor: Colors.grey),
              ),
              Row(
                children: [
                  Spacer(),
                  SizedBox(
                    height: 35,
                    width: 115,
                    child: Container(
                        decoration: BoxDecoration(
                            color: redRemoveAndAdd,
                            borderRadius: BorderRadius.circular(5)),
                        child: FlatButton(
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.delete_sweep,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "Remove",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 11),
                                ),
                              ],
                            ))),
                  ),
                  SizedBox(width: 5),
                  SizedBox(
                    height: 35,
                    width: 115,
                    child: Container(
                        decoration: BoxDecoration(
                            color: redRemoveAndAdd,
                            borderRadius: BorderRadius.circular(5)),
                        child: FlatButton(
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.add_shopping_cart,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "Add items",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 11),
                                ),
                              ],
                            ))),
                  ),
                  Divider(),
                ],
              ),
              SizedBox(
                height: 13,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Shipping Options",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        color: Colors.red[400],
                      ),
                      Text(
                        "Point location",
                        style: TextStyle(
                            color: Colors.red[400],
                            decoration: TextDecoration.underline),
                      ),
                    ],
                  )
                ],
              ),
              Divider(),
              SizedBox(
                height: 3,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 200,
                    child: Text(
                      "Jl. Raya Cileungsi, Perum. Nusa Indah Blok G No.3\nKab. Bogor, Provinsi Jawa Barat, 18033, Phone No: 08123456789",
                      style: TextStyle(fontSize: 11, color: Colors.grey),
                    ),
                  ),
                  // Spacer(),
                  SizedBox(
                    height: 20,
                    width: 60,
                    child: FlatButton(
                      onPressed: () {},
                      child: Text(
                        "edit",
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 13,
                            decoration: TextDecoration.underline),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: yellow,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.transparent.withOpacity(0.2),
                            blurRadius: 2.0,
                            spreadRadius: 1.0,
                            offset: Offset(
                              0.0,
                              4.0,
                            ))
                      ],
                    ),
                    padding: EdgeInsets.only(right: 10, left: 5, bottom: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                "Choose courier:",
                                style: TextStyle(fontSize: 12),
                              ),
                              Container(
                                decoration: BoxDecoration(color: Colors.white),
                                child: Container(
                                  width: 100,
                                  height: 35,
                                  padding: const EdgeInsets.only(
                                      left: 10.0, right: 10.0),
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 0.5, color: Colors.black)),
                                  child: DropdownButtonHideUnderline(
                                    child: DropdownButton(
                                        isExpanded: true,
                                        value: "Paxel",
                                        onChanged: (String newValue) {},
                                        items: _dropDownMenuItems),
                                  ),
                                ),
                              )
                            ]),
                        Text(
                          "Total Weight: 2 Kilogram(s)",
                          style: TextStyle(color: Colors.grey, fontSize: 10),
                        )
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 13,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Coupon",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Divider(),
              SizedBox(
                height: 3,
              ),
              Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      // width: MediaQuery.of(context).size.width - 125,
                      height: 30,
                      child: TextFormField(
                        decoration: InputDecoration(
                          contentPadding:
                              EdgeInsets.symmetric(vertical: 5, horizontal: 8),
                          labelText: "Place your coupon code..",
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            // borderRadius: BorderRadius.circular(25.0),
                            borderSide: BorderSide(
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    height: 30,
                    width: 108,
                    child: Container(
                        decoration: BoxDecoration(
                            color: green,
                            borderRadius: BorderRadius.circular(5)),
                        child: FlatButton(
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.check,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "Apply",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 13),
                                ),
                              ],
                            ))),
                  ),
                ],
              ),
              SizedBox(
                height: 7,
              ),
              Text(
                "Show your coupons",
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 12,
                    decoration: TextDecoration.underline),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Overview",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Divider(),
              SizedBox(
                height: 5,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Total shopping cart (5 items)",
                        style: TextStyle(color: Colors.grey),
                      ),
                      Text(
                        "580.000",
                        style: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Total shopping fee (2 Kgs)",
                        style: TextStyle(color: Colors.grey),
                      ),
                      Text(
                        "37.000",
                        style: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Used Coupon (code:-)",
                        style: TextStyle(color: Colors.grey),
                      ),
                      Text(
                        "-0",
                        style: TextStyle(
                            color: Colors.grey[350],
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      )),
    );
  }
}

Widget fotoMakanan(String image, String name, String value) {
  return Column(
    children: [
      Container(
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Colors.transparent.withOpacity(0.2),
                      blurRadius: 2.0,
                      spreadRadius: 3.0,
                      offset: Offset(
                        0.0,
                        2.0,
                      ))
                ],
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              margin: EdgeInsets.zero,
              padding: EdgeInsets.all(6),
              child: Image.asset(
                // "assets/ayamCabeIjo.jpeg",
                image,
                height: 47,
              ),
            ),
            SizedBox(
              width: 8,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // SizedBox(
                //   height: 4,
                // ),
                Text(
                  // 'Ayam Cabe Ijo',
                  name,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  value,
                  style: TextStyle(color: Colors.grey, fontSize: 10),
                )
              ],
            )
          ],
        ),
      ),
    ],
  );
}
