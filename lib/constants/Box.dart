import 'package:flutter/material.dart';

class Box extends StatelessWidget {
  final Widget text;
  final Text text1;

  Box({@required this.text,this.text1});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Expanded(
            child: Container(
              child: text,
              width: 130.0,
              height: 40.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30.0),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
