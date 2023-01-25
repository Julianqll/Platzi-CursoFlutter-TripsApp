import 'package:flutter/material.dart';
import 'package:platzi_trips_app/Place/model/place.dart';
import 'package:platzi_trips_app/widgets/floating_action_button_green.dart';

class CardProfile extends StatelessWidget {
  final Place place;

  const CardProfile({super.key, required this.place});

  @override
  Widget build(BuildContext context) {
    final card = Container(
      height: 220.0,
      width: 350.0,
      margin: const EdgeInsets.only(
        top: 50.0,
        left: 20,
        right: 20,
        bottom: 50
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(place.imageURL),
          fit: BoxFit.cover,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(20)), //bordes redondeados
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

  final data = Container(
      height: 120.0,
      width: 250.0,
      margin: const EdgeInsets.only(
        top: 80.0,
        left: 20,
        right: 20,
      ),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius:  BorderRadius.all(Radius.circular(20)), //bordes redondeados
        shape: BoxShape.rectangle, //la figura de la imagen 
        boxShadow: <BoxShadow>[ //añadiendo la sombra
          BoxShadow(
            color: Colors.black38,
            blurRadius: 15,
            offset: Offset(0.0,7.0) //posicion de la sombra
          ),
        ]
      ),
      child: Padding(
        padding: const EdgeInsets.only(top:7.0, bottom:7, left: 20, right: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 5,bottom: 10),
              child: Text(place.name,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16
                ),
              ),),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Text(place.description,
                overflow: TextOverflow.clip,
                style: const TextStyle(
                  fontSize: 10
                ),),),
            Text("Steps  ${place.likes}", 
              style: TextStyle(
                color: Colors.amber.shade700,
                fontSize: 13.5,
                fontWeight: FontWeight.w600
              ),)
          ],
        ),
      ),
    );

    return Stack(
      alignment: const Alignment(-0.09, 1.1),
      children: [
        card,
        Stack(
        alignment: const Alignment(0.65, 1.1),
        children: [          
          data,
          const FloatingActionButtonGreen()
          ],
        )
      ],
    );
  }
}