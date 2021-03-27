import 'package:flutter/material.dart';



class ScenesBoxes extends StatelessWidget {
  final Color color;
  final Text cardChild;
  ScenesBoxes({this.color, this.cardChild});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: cardChild,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: color,
                ),
                height: 40.0,
                width: 20.0,
              ),
            ),
          ),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: cardChild,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: color,
                ),
                height: 40.0,
                width: 20.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}