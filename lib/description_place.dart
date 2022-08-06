
import 'package:flutter/material.dart';
import 'package:platzi_trips_app/button_purple.dart';

class DescriptionPlace extends StatelessWidget {

  String nameplace;
  int stars;
  String description;

  DescriptionPlace(this.nameplace, this.stars, this.description, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textDescription = Container(
      margin: const EdgeInsets.only(
        top: 20.0,
        left: 20.0,
        right: 20.0
      ),
      child: const Text(
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
        style:  TextStyle(
              fontFamily: "Lato",
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            )      
      ),
    );

    final star = Container(
      margin: const EdgeInsets.only(
        top: 323.0,
        right: 3.0,
      ),
      child: const Icon(
        Icons.star,
        color: Colors.yellow,
        )
    );


    final starHalf = Container(
      margin: const EdgeInsets.only(
        top: 323.0,
        right: 3.0,
      ),
      child: const Icon(
        Icons.star_half,
        color: Colors.yellow,
        )
    );


    final starBorder = Container(
      margin: const EdgeInsets.only(
        top: 323.0,
        right: 3.0,
      ),
      child: const Icon(
        Icons.star_border,
        color: Colors.yellow,
        )
    );
    final titleStars = Row(
      children: <Widget>[
        Container(
          margin: const EdgeInsets.only(
            left : 20.0,
            top : 320.0,
            right : 20.0, 
          ),
          child: Text(
            nameplace,
            style:  const TextStyle(
              fontFamily: "Lato",
              fontSize: 30.0,
              fontWeight: FontWeight.w900,
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Row(
          children: <Widget>[
            star,
            star,
            star,
            starHalf,
            starBorder,
          ],
        )
      ],
    );
    final fullwidget = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:  <Widget>[
        titleStars,
        textDescription,
        ButtonPurple("Navigate"),
      ]
    );
    return fullwidget;
  }
}