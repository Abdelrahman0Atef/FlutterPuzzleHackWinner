import 'package:flutter/material.dart';
import 'package:flutterpuzzlehackwinner/Widgets/Grid.dart';
import 'package:flutterpuzzlehackwinner/Widgets/Menu.dart';
import 'package:confetti/confetti.dart';
import 'winDialog.dart';

class Board extends StatefulWidget {
  @override
  _BoardState createState() => _BoardState();
}

class _BoardState extends State<Board> with TickerProviderStateMixin {
  var flag;
  AnimationController? _animationController;
  Widget? myWidget;
  var number = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15];
  int moveNumber = 0;
  int tiles = 15;
  final ConfettiController _controller =
      ConfettiController(duration: const Duration(seconds: 6));

  @override
  void initState() {
    super.initState();
    number.shuffle();
    _animationController = AnimationController(
      duration: Duration(milliseconds: 500),
      vsync: this,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SafeArea(
        child: Scaffold(
      body: Container(
        height: size.height,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Sliding Puzzle",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            //SizedBox(height: 10),
            Grid(number, size, onClick, _animationController),
            Menu(reset, size, moveNumber),
          ],
        ),
      ),
    ));
  }

  void onClick(index) {
    if (index - 1 >= 0 && number[index - 1] == 0 && index % 4 != 0 ||
        index + 1 < 16 && number[index + 1] == 0 && (index + 1) % 4 != 0 ||
        (index - 4 >= 0 && number[index - 4] == 0) ||
        (index + 4 < 16 && number[index + 4] == 0)) {
      setState(() {
        number[number.indexOf(0)] = number[index];
        number[index] = 0;
        moveNumber++;
      });
    }
    checkWin();
  }

  void reset() {
    setState(() {
      number.shuffle();
      moveNumber = 0;
    });
  }

  bool isSorted(List list) {
    int prev = list.first;
    for (var i = 1; i < list.length - 1; i++) {
      int next = list[i];
      if (prev > next) return false;
      prev = next;
    }
    return true;
  }

  void checkWin() {
    if (isSorted(number)) {
      showDialog(
          context: context,
          builder: (context) {
            return winDialog(controller: _controller);
          });
      _controller.play();
    }
  }
}
