
import 'package:flutter/material.dart';


class GradientBack extends StatelessWidget {

  String title = "Popular";
  double? height = 250;

  GradientBack(this.title, this.height, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFF4268D3),
            Color(0xFF584CD1)
          ],
          begin: FractionalOffset(0.2, 0),
          end: FractionalOffset(1.0,0.6),
          stops: [0,0.6],
          tileMode: TileMode.clamp,
        )
      ),
      child: (height ?? 1000) > 250 ? 
      Padding(
        padding: const EdgeInsets.only(right: 12, left: 12),
        child: Row(
          children: [
            Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontFamily:'Lato',
              fontWeight: FontWeight.bold,
            ),
          ),
          Spacer(),
          Icon(Icons.brightness_5,
          size: 15,
          color: Colors.white,)
            ],
        ),
      )
      :Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 30,
          fontFamily:'Lato',
          fontWeight: FontWeight.bold,
        ),
      ),
      alignment: (height ?? 1000) > 250 ? Alignment(-0.9,-0.765) : Alignment(-0.9,-0.6) ,
    );
  }
}