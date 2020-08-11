// Adapted from offical flutter gallery:
// https://github.com/flutter/flutter/blob/master/examples/flutter_gallery/lib/demo/material/bottom_app_bar_demo.dart
import 'package:flutter/material.dart';
import 'package:tempatMakna/constant.dart';
import 'package:tempatMakna/my_flutter_app_icons.dart';

class BottomAppbarExample extends StatefulWidget {
  const BottomAppbarExample({Key key}) : super(key: key);

  @override
  _BottomAppbarExampleState createState() => _BottomAppbarExampleState();
}

class _BottomAppbarExampleState extends State<BottomAppbarExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // floatingActionButton: FloatingActionButton(
      //   child: Icon(Icons.add),
      //   mini: this._isFabMini,
      //   onPressed: () {}
      //       // Fluttertoast.showToast(msg: 'Dummy floating action button'),
      // ),
      // // floatingActionButtonLocation: this._fabLocation,
      bottomNavigationBar: buildBottomAppBar(context),
    );
  }
}

BottomAppBar buildBottomAppBar(BuildContext context) {
  return BottomAppBar(
    shape: CircularNotchedRectangle(),
    color: Theme.of(context).primaryColor,
    child: Container(
      padding: EdgeInsets.all(15),
      child: Row(
        children: <Widget>[
          Text(
            "Total:",
            style: TextStyle(
                color: Colors.white,
                decoration: TextDecoration.underline,
                fontSize: 10),
          ),
          Text("  Rp. 617.000,-",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18)),
          Spacer(),
          SizedBox(
            height: 35,
            // width: MediaQuery.of(context).size.width / 2,
            child: Container(
                decoration: BoxDecoration(
                    color: green, borderRadius: BorderRadius.circular(5)),
                child: InkWell(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                      Icon(
                        MyFlutterApp.checklist,
                        color: Colors.white,
                        size: 17,
                      ),
                      Text(
                        "Confirm Order",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize:
                                MediaQuery.of(context).textScaleFactor + 11.5,
                            fontWeight: FontWeight.bold),
                      ),
                  ],
                ),
                    ))),
          ),
        ],
      ),
    ),
  );
}
