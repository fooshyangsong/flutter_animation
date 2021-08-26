import 'package:flutter/material.dart';

class ScreenTitle extends StatelessWidget {
  final String text;

  const ScreenTitle({Key key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      child: Text(
        text,
        style: TextStyle(
            fontSize: 36, color: Colors.white, fontWeight: FontWeight.bold),
      ),
      tween: Tween<double>(begin: 0, end: 1),
      builder: (BuildContext context, double opacityVal, Widget child) {
        return Opacity(
            opacity: opacityVal,
            child: Padding(
              padding: EdgeInsets.only(top: opacityVal * 20),
              child: child,
            ));
      },
      duration: Duration(milliseconds: 500),
    );
  }
}
