import 'package:flutter/material.dart';

class TextAnimation extends StatefulWidget {
  final String text;
  final Color color;

  TextAnimation(this.text, this.color);

  @override
  _TextAnimationState createState() => _TextAnimationState();
}

class _TextAnimationState extends State<TextAnimation>
    with SingleTickerProviderStateMixin {
  AnimationController animationController;
  Animation animation;

  List<String> list;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: Duration(microseconds: 100),
    );
    animation = Tween(begin: 0.0, end: 1.0).animate(animationController);
    animationController.forward();
  }

  @override
  void didUpdateWidget(TextAnimation oldWidget) {
    if (oldWidget.text != widget.text) {
      animationController.reverse(from: 0.3)
        ..whenComplete(() {
          animationController.forward();
        });
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    list = widget.text.split(' ');
    return FadeTransition(
      opacity: animation,
      child: RichText(
        text: TextSpan(
          style: TextStyle(
            fontFamily: 'Calistoga',
            fontWeight: FontWeight.w200,
            fontSize: 8,
            wordSpacing: 5,
            // color: Theme.of(context).primaryColorLight.withOpacity(0.15)
            color: Theme.of(context).primaryTextTheme.body2.color.withOpacity(0.15),
          ),
          children: [
            TextSpan(text: 'a time for you, a time for me '),
            TextSpan(
              text: 'It`s',
              style: TextStyle(
                fontFamily: 'Calistoga',
                fontWeight: FontWeight.w700,
                fontSize: 16,
                wordSpacing: 5,
                letterSpacing: 2,
                color: widget.color,
              ),
            ),
            TextSpan(text: ' a time to cheer, '),
            TextSpan(
              text: list[0],
              style: TextStyle(
                fontFamily: 'Calistoga',
                fontWeight: FontWeight.w700,
                letterSpacing: 2,
                fontSize: 16,
                wordSpacing: 5,
                color: widget.color,
              ),
            ),
            TextSpan(
                text:
                    ' a time to cry, a time to live, a time to die,  '),
            TextSpan(
              text: list[1],
              style: TextStyle(
                fontFamily: 'Calistoga',
                fontWeight: FontWeight.w700,
                letterSpacing: 2,
                fontSize: 16,
                wordSpacing: 5,
                color: widget.color,
              ),
            ),
            TextSpan(text: ' a time to sleep, a time to wake, '),
            TextSpan(
              text: list[2],
              style: TextStyle(
                fontFamily: 'Calistoga',
                fontWeight: FontWeight.w700,
                letterSpacing: 2,
                fontSize: 16,
                wordSpacing: 5,
                color: widget.color,
              ),
            ),
            TextSpan(text: ' a time for real, '),
            TextSpan(
              text: list[3],
              style: TextStyle(
                fontFamily: 'Calistoga',
                fontWeight: FontWeight.w700,
                letterSpacing: 2,
                fontSize: 16,
                wordSpacing: 5,
                color: widget.color,
              ),
            ),
            TextSpan(
                text: ' a time for fake, a time for truth, a time to lie, '),
            TextSpan(
              text: list[4],
              style: TextStyle(
                fontFamily: 'Calistoga',
                fontWeight: FontWeight.w700,
                letterSpacing: 2,
                fontSize: 16,
                wordSpacing: 5,
                color: widget.color,
              ),
            ),
            TextSpan(text: ' a time to laugh, '),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }
}
