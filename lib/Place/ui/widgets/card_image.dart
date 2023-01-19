import 'package:flutter/material.dart';
import 'package:platzi_trips_app/widgets/floating_action_button_green.dart';

class CardImage extends StatelessWidget {

  String pathImage = "assets/img/beach.jpeg";

  CardImage(this.pathImage, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    final card = Container(
      height: 350.0,
      width: 250.0,
      margin: const EdgeInsets.only(
        top: 80.0,
        left: 20.0,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(pathImage),
          fit: BoxFit.cover,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(10)), //bordes redondeados
        shape: BoxShape.rectangle, //la figura de la imagen 
        boxShadow: const <BoxShadow>[ //añadiendo la sombra
          BoxShadow(
            color: Colors.black38,
            blurRadius: 15,
            offset: Offset(0.0,7.0) //posicion de la sombra
          ),
        ]
      ),
    );

    return Stack(
      alignment: const Alignment(0.9, 1.1),
      children: [
        card,
        const FloatingActionButtonGreen()
      ],
    );
  }
}