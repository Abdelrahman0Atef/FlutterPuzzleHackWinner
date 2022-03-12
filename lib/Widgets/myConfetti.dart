import 'package:flutter/material.dart';
import 'package:confetti/confetti.dart';

class myConfettiwid extends StatelessWidget {
  const myConfettiwid({
    Key? key,
    required ConfettiController controller,
  })  : _controller = controller,
        super(key: key);

  final ConfettiController _controller;

  @override
  Widget build(BuildContext context) {
    return ConfettiWidget(
        confettiController: _controller,
        blastDirectionality: BlastDirectionality.explosive,
        shouldLoop: true,
        colors: const [Colors.white, Colors.blue, Colors.grey]);
  }
}
