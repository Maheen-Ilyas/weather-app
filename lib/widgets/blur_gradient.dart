import 'dart:ui';
import 'package:flutter/material.dart';

class BlurGradient extends StatelessWidget {
  final Color colorOne;
  final Color colorTwo;
  final Color colorThree;
  final Color colorFour;
  final Color colorFive;
  final Widget widget;
  const BlurGradient({
    super.key,
    required this.colorOne,
    required this.colorTwo,
    required this.colorThree,
    required this.colorFour,
    required this.colorFive,
    required this.widget,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: const AlignmentDirectional(3.0, -0.1),
          child: Container(
            height: 300.0,
            width: 300.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: colorOne,
            ),
          ),
        ),
        Align(
          alignment: const AlignmentDirectional(-3.0, -0.1),
          child: Container(
            height: 300.0,
            width: 300.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: colorTwo,
            ),
          ),
        ),
        Align(
          alignment: const AlignmentDirectional(0.0, -1.2),
          child: Container(
            height: 300.0,
            width: 320.0,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: colorThree,
            ),
          ),
        ),
        Align(
          alignment: const AlignmentDirectional(5.0, 1.0),
          child: Container(
            height: 300.0,
            width: 300.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: colorFour,
            ),
          ),
        ),
        Align(
          alignment: const AlignmentDirectional(-5.0, 1.0),
          child: Container(
            height: 300.0,
            width: 300.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: colorFive,
            ),
          ),
        ),
        BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 80.0,
            sigmaY: 80.0,
          ),
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.transparent,
            ),
          ),
        ),
        widget,
      ],
    );
  }
}
