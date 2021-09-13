import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {

  ReusableCard({this.colour , this.iconInfo, this.onPress});

  final Color colour;
  final Widget iconInfo;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: iconInfo,
        margin: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}