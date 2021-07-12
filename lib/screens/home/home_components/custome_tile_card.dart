import 'package:flutter/material.dart';
import 'package:trippy/models/trip.dart';
import 'package:trippy/screens/details/details.dart';

class CustomTileCard extends StatefulWidget {
  CustomTileCard({
    Key? key,
  }) : super(key: key);

  @override
  _CustomTileCardState createState() => _CustomTileCardState();
}

class _CustomTileCardState extends State<CustomTileCard> {
  // List<Widget> _tripCardList = [];

  List<Trip> _trips = [
    Trip(title: 'Beach Paradise', price: '350', nights: '3', img: 'beach.png'),
    Trip(title: 'City Break', price: '400', nights: '5', img: 'city.png'),
    Trip(title: 'Ski Adventure', price: '750', nights: '2', img: 'ski.png'),
    Trip(title: 'Space Blast', price: '600', nights: '4', img: 'space.png'),
    // Trip(title: 'beach.png', price: '480', nights: '2', img: 'beach.png'),
    // Trip(title: 'Hotel Seapark', price: '550', nights: '3', img: 'city.png'),
    // // Trip(title: 'Ski Adventure', price: '750', nights: '2', img: 'ski.png'),
    // // Trip(title: 'Space Blast', price: '600', nights: '4', img: 'space.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: ListView.builder(
              itemCount: _trips.length,
              itemBuilder: (context, index) {
                return Card(
                  elevation: 0.0,
                  child: ListTile(
                    leading: Container(
                        padding: EdgeInsets.all(8),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Hero(
                                tag: "location-img-${_trips[index].img}",
                                child: Image.asset(
                                    "images/${_trips[index].img}")))),
                    title: Text("${_trips[index].nights} Nights",
                        style:
                            TextStyle(fontSize: 12, color: Colors.blueAccent)),
                    subtitle: Text(
                      _trips[index].title,
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                    trailing: Text("\$" + _trips[index].price),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => DetailScreen(
                                trip: _trips[index],
                              )));
                    },
                  ),
                );
              })),
    );
  }
}
