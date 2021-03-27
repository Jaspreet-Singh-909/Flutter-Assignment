import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class ColorsPallate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0,left: 20.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child:CircleAvatar(backgroundColor: Color(0xFFFF9B9B),),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child:CircleAvatar(backgroundColor: Color(0xFF94EB9E),),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child:CircleAvatar(backgroundColor: Color(0xFF94CAEB),),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child:CircleAvatar(backgroundColor: Color(0xFFA594EB),),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child:CircleAvatar(backgroundColor: Color(0xFFDE94EB),),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child:CircleAvatar(backgroundColor: Color(0xFFEBD094),),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(child: SvgPicture.asset('asset/plus.svg')),
          )
        ],
      ),
    );
  }
}
