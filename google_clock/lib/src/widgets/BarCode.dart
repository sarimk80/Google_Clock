import 'package:flutter/material.dart';

class BarCode extends StatefulWidget {
  final Color color;
  final int hour;
  final int minutes;
  final int seconds;



  BarCode(this.color, this.hour, this.minutes, this.seconds);

  @override
  _BarCodeState createState() => _BarCodeState();
}

class _BarCodeState extends State<BarCode> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15,bottom: 10,left: 5),
      child: Wrap(
        alignment: WrapAlignment.center,
        direction: Axis.horizontal,
        spacing: 5,
        children: <Widget>[
          Container(
            width: 5,
            height: 100,
            decoration: BoxDecoration(
              color: widget.color,
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          Container(
            width: 5,
            height: 100,
            decoration: BoxDecoration(
              color: widget.color,
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          Column(
            children: <Widget>[
              Container(
                width: 5,
                height: 90,
                decoration: BoxDecoration(
                  color: widget.color,
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              Text(widget.hour.toString(),style: TextStyle(fontWeight: FontWeight.w500,fontFamily: 'Calistoga'),),
            ],
          ),
          Container(
            width: 5,
            height: 100,
            decoration: BoxDecoration(
              color: widget.color,
              borderRadius: BorderRadius.circular(5),
            ),
          ),

          Container(
            width: 5,
            height: 100,
            decoration: BoxDecoration(
              color: widget.color,
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          Column(
            children: <Widget>[
              Container(
                width: 5,
                height: 90,
                decoration: BoxDecoration(
                  color: widget.color,
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              Text(widget.minutes.toString(),style: TextStyle(fontWeight: FontWeight.w500,fontFamily: 'Calistoga'),),
            ],
          ),
          Container(
            width: 5,
            height: 100,
            decoration: BoxDecoration(
              color: widget.color,
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          Container(
            width: 5,
            height: 100,
            decoration: BoxDecoration(
              color: widget.color,
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          Column(
            children: <Widget>[
              Container(
                width: 5,
                height: 90,
                decoration: BoxDecoration(
                  color: widget.color,
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              Text(widget.seconds.toString(),style: TextStyle(fontWeight: FontWeight.w500,fontFamily: 'Calistoga'),),
            ],
          ),
          Container(
            width: 5,
            height: 100,
            decoration: BoxDecoration(
              color: widget.color,
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          Container(
            width: 5,
            height: 100,
            decoration: BoxDecoration(
              color: widget.color,
              borderRadius: BorderRadius.circular(5),
            ),
          ),
        ],
      ),
    );
  }
}
