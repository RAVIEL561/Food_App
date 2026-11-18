
import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  const MainButton({
    super.key, required this.onPressed, required this.text, this.padding,
  });
  final VoidCallback onPressed;
final String text;
final  EdgeInsets? padding;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding??EdgeInsets.zero,
      child: Container(
        width: double.infinity,
        height: 62,
        child: ElevatedButton(
          onPressed: onPressed, 
        child:Text(text,style: TextStyle(
          color: Colors.white,
        )),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.deepOrange,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(8),
          ),
        ),
        ),
      ),
    );
  }
}