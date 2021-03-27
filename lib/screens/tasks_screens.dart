import 'package:flutter/cupertino.dart';
import 'file:///C:/Users/DELL/AndroidStudioProjects/flutter_assignment/lib/constants/ReusableCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'result_page.dart';

class TasksScreens extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0A4DA2),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            child: Padding(
              padding: EdgeInsets.only(
                  top: 60.0,left: 20.0, bottom: 30.0),
              child: SafeArea(
                child: Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      SafeArea(
                        child: Text(
                          'Control \nPanel',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40.0,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 150.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(
                              height: 55.0,
                              width: 55.0,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(50.0),
                                child: SvgPicture.asset('asset/user.svg'),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xFFF6F8FB),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(40.0),
                  topLeft: Radius.circular(40.0),
                ),
              ),
              child: Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 30.0, top: 20.0, right: 20.0),
                      child: Text(
                        'All Rooms',
                        style: TextStyle(
                          color: Color(0xFF0A4DA2),
                          fontSize: 20.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ResultPage(),
                          ),
                        );
                      },
                      child: Expanded(
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              child: ReusableCard(
                                cardChild: Padding(
                                  padding: const EdgeInsets.all(7.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: <Widget>[
                                      SvgPicture.asset('asset/bed.svg'),
                                      Padding(
                                        padding:
                                        const EdgeInsets.only(top:10.0,right: 80.0),
                                        child: Center(
                                          child: Expanded(
                                            child: Text(
                                              'Bed room\n4 Lights',
                                              style: TextStyle(
                                                  fontSize: 12.0,
                                                  fontWeight: FontWeight.w900,
                                                  color: Colors.black54),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Row(
                                children: <Widget>[
                                  Expanded(
                                    child: ReusableCard(
                                      cardChild: Padding(
                                        padding: const EdgeInsets.all(7.0),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.end,
                                          children: <Widget>[
                                            SvgPicture.asset('asset/room.svg'),
                                            Padding(
                                              padding:
                                              const EdgeInsets.only(top: 10.0,right: 80.0),
                                              child: Expanded(
                                                child: Text(
                                                  'Living room\n2 Lights',
                                                  style: TextStyle(
                                                      fontSize: 12.0,
                                                      fontWeight: FontWeight.w900,
                                                      color: Colors.black54),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: ReusableCard(
                              cardChild: Padding(
                                padding: const EdgeInsets.all(7.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: <Widget>[
                                    SvgPicture.asset('asset/kitchen.svg'),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 10.0, right: 80.0),
                                      child: Center(
                                        child: Expanded(
                                          child: Text(
                                            'Kitchen\n5 Lights',
                                            style: TextStyle(
                                                fontSize: 12.0,
                                                fontWeight: FontWeight.w900,
                                                color: Colors.black54),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: ReusableCard(
                              cardChild: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: <Widget>[
                                    SvgPicture.asset('asset/bathtube.svg'),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 10.0, right: 80.0),
                                      child: Center(
                                        child: Expanded(
                                          child: Text(
                                            'Bathroom\n1 Lights',
                                            style: TextStyle(
                                                fontSize: 12.0,
                                                fontWeight: FontWeight.w900,
                                                color: Colors.black54),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: ReusableCard(
                              cardChild: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Column(
                                  children: <Widget>[
                                    SvgPicture.asset('asset/house.svg'),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 1.0, right: 80.0),
                                      child: Center(
                                        child: Expanded(
                                          child: Text(
                                            'Outdoor\n5 Lights',
                                            style: TextStyle(
                                                fontSize: 12.0,
                                                fontWeight: FontWeight.w900,
                                                color: Colors.black54),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: ReusableCard(
                              cardChild: Padding(
                                padding: const EdgeInsets.all(7.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: <Widget>[
                                    SvgPicture.asset('asset/balcony.svg'),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 10.0, right: 80.0),
                                      child: Center(
                                        child: Expanded(
                                          child: Text(
                                            'Balcony\n2 Lights',
                                            style: TextStyle(
                                                fontSize: 12.0,
                                                fontWeight: FontWeight.w900,
                                                color: Colors.black54),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
