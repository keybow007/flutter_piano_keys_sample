import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PianoKey extends StatefulWidget {
  final bool isBlack;

  PianoKey({this.isBlack});

  @override
  _PianoKeyState createState() => _PianoKeyState();
}

const keyShape = RoundedRectangleBorder(
  borderRadius: BorderRadius.only(
    bottomLeft: Radius.circular(9.0),
    bottomRight: Radius.circular(9.0),
  ),
);

const keyWidth = 80.0;

class _PianoKeyState extends State<PianoKey> {
  @override
  Widget build(BuildContext context) {
    final pianoKey = Stack(
      children: <Widget>[
        Card(
          shape: keyShape,
          color: widget.isBlack ? Colors.black : Colors.white,
          child: InkWell(
            highlightColor: Colors.grey,
            onTap: () => print("keyTapped"),
          ),
        ),
        //TODO 鍵盤名

      ],
    );
    return widget.isBlack
        //黒鍵盤
        ? Container(
            width: keyWidth,
            margin: const EdgeInsets.symmetric(horizontal: 2.0),
            padding: const EdgeInsets.symmetric(horizontal: keyWidth * 0.1),
            child: Card(
              elevation: 6.0,
              shape: keyShape,
              child: pianoKey,
            ),
          )
        //白鍵盤
        : Container(
            width: keyWidth,
            child: pianoKey,
            margin: const EdgeInsets.symmetric(horizontal: 2.0),
          );
  }
}
