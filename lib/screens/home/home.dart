import 'package:flutter/material.dart';
import 'package:trippy/components/screenTitle.dart';
import 'package:trippy/screens/home/home_components/custome_tile_card.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("images/bg.png"),
                        fit: BoxFit.fitHeight),
                  ),
                ),
                Positioned(
                    top: 65,
                    left: 15,
                    child: ScreenTitle(
                      title: "Trippy",
                    )),
              ],
            ),
            CustomTileCard(),
          ],
        ),
      ),
    );
  }
}
