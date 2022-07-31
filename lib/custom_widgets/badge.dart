import 'package:flutter/material.dart';

class Badge extends StatelessWidget {
  const Badge(
      {Key? key, required this.caption, required this.color, this.fontSize = 10})
      : super(key: key);

  final Color color;
  final String caption;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        caption,
        style: TextStyle(
          fontSize: fontSize,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
