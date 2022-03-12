import 'package:flutter/material.dart';
import 'package:confetti/confetti.dart';
import 'myConfetti.dart';

class winDialog extends StatelessWidget {
  const winDialog({
    Key? key,
    required ConfettiController controller,
  })  : _controller = controller,
        super(key: key);

  final ConfettiController _controller;

  @override
  Widget build(BuildContext context) {
    return Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        child: Container(
          height: 190,
          child: Padding(
            padding: EdgeInsets.all(30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(child: myConfettiwid(controller: _controller)),
                Text("Well done.\nCongrats!",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
                SizedBox(
                  width: 200,
                  child: RaisedButton(
                    color: Colors.blue,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: Text(
                      "Close",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
