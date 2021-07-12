import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:trippy/components/heart_icon.dart';
import 'package:trippy/models/trip.dart';
import 'package:flutter_ameno_ipsum/flutter_ameno_ipsum.dart';

class DetailScreen extends StatelessWidget {
  final Trip trip;

  const DetailScreen({Key? key, required this.trip}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Hero(
                tag: "location-img-${trip.img}",
                child: Image.asset(
                  "images/" + trip.img,
                  height: 360,
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              ListTile(
                title: Text(
                  trip.title,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.grey[800]),
                ),
                subtitle: Text(trip.nights + " nights stay for " + trip.price),
                trailing: HeartIcon(),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  ameno(paragraphs: 1, words: 80),
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
