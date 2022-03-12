import 'dart:ui';
import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  Function? reset;
  var size;
  var moveNumber;

  Menu(this.reset, this.size, this.moveNumber);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          RaisedButton(
            child: Text("Shuffle"),
            textColor: Colors.white,
            onPressed: () {
              reset!();
            },
            color: Colors.blue,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          ),
          Text(
            "$moveNumber Moves | 15 Tiles",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          )
        ],
      ),
    );
  }
}
