import 'package:flutter/material.dart';

class HeartIcon extends StatefulWidget {
  const HeartIcon({
    Key? key,
  }) : super(key: key);

  @override
  _HeartIconState createState() => _HeartIconState();
}

class _HeartIconState extends State<HeartIcon>
    with SingleTickerProviderStateMixin {
  bool isClicked = false;
  late AnimationController _controller;
  late Animation colorAnimation;
  late Animation sizeAnimation;
  late Animation<double> _curves;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 300),
    );

    _curves = CurvedAnimation(parent: _controller, curve: Curves.slowMiddle);

    colorAnimation =
        ColorTween(begin: Colors.grey[400], end: Colors.red).animate(_curves);

    sizeAnimation = TweenSequence(<TweenSequenceItem<double>>[
      TweenSequenceItem<double>(
          tween: Tween<double>(begin: 30, end: 50), weight: 50),
      TweenSequenceItem<double>(
          tween: Tween<double>(begin: 50, end: 30), weight: 50),
    ]).animate(_curves);

    // _controller.addListener(() {
    //   print(_controller.value);
    //   print(colorAnimation.value);
    // });
    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        setState(() {
          isClicked = true;
        });
      }
      if (status == AnimationStatus.dismissed) {
        isClicked = false;
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (BuildContext context, Widget? child) {
        return IconButton(
          onPressed: () {
            isClicked ? _controller.reverse() : _controller.forward();
          },
          icon: Icon(
            Icons.favorite,
            color: colorAnimation.value,
            size: sizeAnimation.value,
          ),
        );
      },
    );
  }
}
