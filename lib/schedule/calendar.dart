import 'package:flutter/material.dart';

class Marker extends StatelessWidget {
  final String label;
  final Color color;
  final double textSize;
  final double gap;

  const Marker({
    Key? key,
    required this.label,
    required this.color,
    this.textSize = 16,
    this.gap = 8,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Row(
        children: [
          Container(
              width: markerSize,
              height: markerSize,
              decoration: BoxDecoration(color: color, shape: BoxShape.circle)),
          Padding(
            padding: EdgeInsets.fromLTRB(gap, 0, 0, 0),
            child: Text(
              label,
              style: TextStyle(fontSize: textSize),
            ),
          )
        ],
      ),
    );
  }

  get markerSize {
    return textSize * 2;
  }
}
