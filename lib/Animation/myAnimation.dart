import 'package:flutter/material.dart';

class myAnimation extends PageRouteBuilder {
  final Page;

  myAnimation({this.Page})
      : super(
            pageBuilder: (context, animation, animationtwo) => Page,
            transitionsBuilder: (context, animation, animationtwo, child) {
              return Align(
                  child: SizeTransition(
                      child: child, sizeFactor: animation, axisAlignment: 1));
            });
}
