import 'package:flutter/material.dart';
import 'package:google_clock/src/widgets/TextAnimation.dart';

class AnimatedText extends StatefulWidget {
  final String text;
  final Color color;

  AnimatedText({this.text, this.color});

  @override
  _AnimatedTextState createState() => _AnimatedTextState();
}

class _AnimatedTextState extends State<AnimatedText> {
  List<String> list;

  @override
  Widget build(BuildContext context) {
    return TextAnimation(
      widget.text,
      widget.color,
    );
//    list = widget.text.split(' ');
//    return RichText(
//      text: TextSpan(
//        style: TextStyle(
//          fontFamily: 'Calistoga',
//          fontSize: 8,
//          wordSpacing: 5,
//          color: Colors.white.withOpacity(0.15),
//        ),
//        children: [
//          TextSpan(text: 'Lorem ipsum dolor '),
//          TextSpan(
//            text: 'It`s',
//            style: TextStyle(
//              fontFamily: 'Calistoga',
//              fontSize: 16,
//              wordSpacing: 5,
//              color: widget.color,
//            ),
//          ),
//          TextSpan(text: ' Lorem ipsum et dolore magna '),
//          TextSpan(
//            text: list[0],
//            style: TextStyle(
//              fontFamily: 'Calistoga',
//              fontSize: 16,
//              wordSpacing: 5,
//              color: widget.color,
//            ),
//          ),
//          TextSpan(
//              text:
//                  ' sed do eiusmod tempor unt labore et dolore magna aliqua.  '),
//          TextSpan(
//            text: list[1],
//            style: TextStyle(
//              fontFamily: 'Calistoga',
//              fontSize: 16,
//              wordSpacing: 5,
//              color: widget.color,
//            ),
//          ),
//          TextSpan(
//              text: ' sed do eiusmod nt ut et dolore magna aliqua. '),
//          TextSpan(
//            text: list[2],
//            style: TextStyle(
//              fontFamily: 'Calistoga',
//              fontSize: 16,
//              wordSpacing: 5,
//              color: widget.color,
//            ),
//          ),
//          TextSpan(text: ' abore et dolore magna aliqua. '),
//          TextSpan(
//            text: list[3],
//            style: TextStyle(
//              fontFamily: 'Calistoga',
//              fontSize: 16,
//              wordSpacing: 5,
//              color: widget.color,
//            ),
//          ),
//          TextSpan(
//              text: ' sed do eiusmod temport ut sed do eiusmod temport ut '),
//          TextSpan(
//            text: list[4],
//            style: TextStyle(
//              fontFamily: 'Calistoga',
//              fontSize: 16,
//              wordSpacing: 5,
//              color: widget.color,
//            ),
//          ),
//          TextSpan(text: ' sed do '),
//        ],
//      ),
//    );
  }
}
