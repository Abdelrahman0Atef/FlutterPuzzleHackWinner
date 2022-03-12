import 'package:flutter/material.dart';

class Grid extends StatelessWidget {
  var number = [];
  var size;
  Function onClick;
  var _controller;

  Grid(this.number, this.size, this.onClick, this._controller);

  @override
  Widget build(BuildContext context) {
    var height = size.height;
    return Container(
      height: height * 0.65,
      child: Padding(
        padding: EdgeInsets.all(8),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4, mainAxisSpacing: 5, crossAxisSpacing: 5),
          itemCount: number.length,
          itemBuilder: (context, index) {
            return number[index] != 0
                ? RaisedButton(
                    splashColor: Colors.blueAccent,
                    hoverColor: Colors.blue.shade900,
                    child: Text(
                      number[index].toString(),
                      style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 30),
                    ),
                    onPressed: () {
                      onClick(index);
                    },
                    color: Colors.blue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                  )
                : SizedBox.shrink();
          },
        ),
      ),
    );
  }
}
