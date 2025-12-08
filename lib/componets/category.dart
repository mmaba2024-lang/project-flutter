import 'package:flutter/material.dart';

// ignore: must_be_immutable
class category extends StatelessWidget {
  category({this.text, this.color, this.onTap,});
  String? text;

  Color? color;
  Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(

        color: color,
        padding: EdgeInsets.only(left: 24),
        alignment: Alignment.centerLeft,
        height: 180,
        width: double.infinity,
        child: Text(text!, style: TextStyle(fontSize: 18, color: Colors.white)),

      ),
    );
  }
}
