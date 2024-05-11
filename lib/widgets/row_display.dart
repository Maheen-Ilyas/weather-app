import 'package:flutter/material.dart';

class RowDisplay extends StatelessWidget {
  final String imageOne;
  final String imageTwo;
  final String textOne;
  final String textTwo;
  final String subTextOne;
  final String subTextTwo;
  const RowDisplay({
    super.key,
    required this.imageOne,
    required this.imageTwo,
    required this.textOne,
    required this.textTwo,
    required this.subTextOne,
    required this.subTextTwo,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          imageOne,
          height: 60.0,
          width: 60.0,
        ),
        const SizedBox(width: 10.0),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                textOne,
                style: const TextStyle(
                  color: Colors.white54,
                  fontSize: 16.0,
                ),
              ),
              Text(
                subTextOne,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        Image.asset(
          imageTwo,
          height: 60.0,
          width: 60.0,
        ),
        const SizedBox(width: 10.0),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                textTwo,
                style: const TextStyle(
                  color: Colors.white54,
                  fontSize: 16.0,
                ),
              ),
              Text(
                subTextTwo,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
