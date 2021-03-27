import 'package:flutter/material.dart';



class ReusableCard extends StatelessWidget {
  final Widget cardChild;
  ReusableCard({
    @required this.cardChild,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      width: 130.0,
      height: 130.0,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: Colors.white12,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(25.0),
      ),
    );
  }
}