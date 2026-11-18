import 'package:flutter/material.dart';

class Customplatform extends StatelessWidget {
  const Customplatform({
    super.key, required this.color, required this.icon,
  });
final Color color;
final Icon icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 70,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(34),
      ),
      child: icon ,
    );
  }
}