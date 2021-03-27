import 'file:///C:/Users/DELL/AndroidStudioProjects/flutter_assignment/lib/constants/Box.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'file:///C:/Users/DELL/AndroidStudioProjects/flutter_assignment/lib/constants/ColorsPallate.dart';


class ResultPage extends StatefulWidget {
  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  int intensity = 180;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0A4DA2),
      body: Column(
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 60.0, left: 30.0, right: 30.0, bottom: 30.0),
              child: Column(
                children: <Widget>[
                  SafeArea(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Icon(
                          Icons.chevron_left,
                          size: 40.0,
                          color: Colors.white,
                        ),
                        Text(
                          'Bed\nRoom',
                          style: TextStyle(
                              fontSize: 30.0,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 90.0),
                          child: SvgPicture.asset('asset/Group 38.svg'),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 200.0, top: 2.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '4 Lights',
                          style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.yellow,
                              fontWeight: FontWeight.w500),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          // mainAxisSize: MainAxisSize.max,
                          children: [
                            // Box(
                            //   text: Padding(
                            //     padding: const EdgeInsets.all(10.0),
                            //     child: SvgPicture.asset('asset/solution.svg'),
                            //   ),
                            //   text1: Text('Main Light',
                            //       style: TextStyle(
                            //           color: Colors.blue,
                            //           fontSize: 20.0,
                            //           fontWeight: FontWeight.w500)),
                            // ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20.0),
                  topLeft: Radius.circular(20.0),
                ),
              ),
              child: ListView(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0, top: 5.0),
                    child: Text(
                      'Intensity',
                      style: TextStyle(
                          color: Color(0xFF002D67),
                          fontSize: 20.0,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  Column(
                    children: [
                      Slider(
                        value: intensity.toDouble(),
                        min: 120.0,
                        max: 220.0,
                        divisions: 6,
                        activeColor: Color(0xFFFFD339),
                        inactiveColor: Color(0xFFCECECE),
                        onChanged: (double newValue) {
                          setState(() {
                            intensity = newValue.round();
                          });
                        },
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0, top: 10.0),
                    child: Text(
                      'Colors',
                      style: TextStyle(
                          color: Color(0xFF002D67),
                          fontSize: 20.0,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  ColorsPallate(),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0, left: 30.0),
                    child: Text(
                      'Scenes',
                      style: TextStyle(
                          color: Color(0xFF002D67),
                          fontSize: 20.0,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  ScenesBoxes(
                    color: Color(0xFFFF9C9B),
                  ),
                  ScenesBoxes(
                    color: Color(0xFFAA93EB),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ScenesBoxes extends StatelessWidget {
  final Color color;
  ScenesBoxes({this.color});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
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
    );
  }
}
