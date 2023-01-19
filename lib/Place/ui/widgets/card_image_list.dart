import 'package:flutter/material.dart';
import 'package:platzi_trips_app/Place/ui/widgets/card_image.dart';

class CardImageList extends StatelessWidget {
  const CardImageList({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350.0, //que la lista no se pase del rango
      child: ListView(
        padding: const EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal, //cambiando a scroll horizontal
        children: [
          CardImage("assets/images/beach.jpeg"),
          CardImage("assets/images/beachPalm.jpeg"),
          CardImage("assets/images/mountain.jpeg"),
          CardImage("assets/images/river.jpeg"),
          CardImage("assets/images/mountainStars.jpeg"),
          CardImage("assets/images/sunset.jpeg"),
        ],
      ),
    );
  }
}