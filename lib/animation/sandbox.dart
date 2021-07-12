import 'dart:ui';

import 'package:flutter/material.dart';

class Sandbox extends StatefulWidget {
  const Sandbox({Key? key}) : super(key: key);

  @override
  _SandboxState createState() => _SandboxState();
}

class _SandboxState extends State<Sandbox> {
  double _opacity = 1;
  double _margin = 0;
  double _width = 200;
  Color _color = Colors.red;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedContainer(
        duration: Duration(seconds: 3),
        color: _color,
        width: _width,
        margin: EdgeInsets.all(_margin),
        child: SafeArea(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _margin = 75;
                    });
                  },
                  child: Text(
                    "animate margin",
                    style: TextStyle(color: Colors.black),
                  )),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _color = Colors.green;
                    });
                  },
                  child: Text(
                    "animate Color",
                    style: TextStyle(color: Colors.black),
                  )),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _width = 400;
                    });
                  },
                  child: Text(
                    "animate width",
                    style: TextStyle(color: Colors.black),
                  )),
              AnimatedOpacity(
                  duration: Duration(seconds: 3),
                  opacity: _opacity,
                  child: Text("Hide me")),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _opacity = 0;
                    });
                  },
                  child: Text(
                    "animate opacity",
                    style: TextStyle(color: Colors.black),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
