import 'package:flutter/material.dart';

class ScreenTitle extends StatelessWidget {
  final String title;
  const ScreenTitle({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      duration: Duration(seconds: 3),
      tween: Tween<double>(begin: 0.0, end: 1.0),
      curve: Curves.easeIn,
      builder: (context, double _value, child) {
        return Opacity(
          opacity: _value,
          child: Padding(
            padding: EdgeInsets.only(top: _value * 20),
            child: child,
          ),
        );
      },
      child: Text(
        title,
        style: TextStyle(
            fontSize: 28.0, color: Colors.white, fontWeight: FontWeight.bold),
      ),
    );
  }
}
