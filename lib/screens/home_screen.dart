import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mypianosample/components/piano_key.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

double get keyWidth => 80 + (80 * _widthRatio);
double _widthRatio = 0.0;

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Piano Sample"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            //白鍵盤
            Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                PianoKey(isBlack: false),
                PianoKey(isBlack: false),
                PianoKey(isBlack: false),
                PianoKey(isBlack: false),
                PianoKey(isBlack: false),
                PianoKey(isBlack: false),
                PianoKey(isBlack: false),
              ],
            ),
            //黒鍵盤
            Positioned(
              left: 0.0,
              right: 0.0,
              bottom: 100.0,
              top: 0.0,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(width: keyWidth / 2),
                  PianoKey(isBlack: true),
                  PianoKey(isBlack: true),
                  Container(width: keyWidth),
                  PianoKey(isBlack: true),
                  PianoKey(isBlack: true),
                  PianoKey(isBlack: true),
                  Container(width: keyWidth / 2),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
