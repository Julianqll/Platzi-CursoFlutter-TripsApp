
import 'package:flutter/material.dart';


class GradientBack extends StatelessWidget {

  String title = "Popular";
  double? height = 250;

  GradientBack(this.title, this.height, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Gradient(title,height),
      ClipPath(
        clipper: TsClip2(),
        child: Container(
          color: Colors.white.withOpacity(0.05),
          height: height,
        ))
      ],
    );
  }
}

class TsClip2 extends CustomClipper<Path> {
   @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height);
    path.lineTo(size.width/4, size.height);
    path.quadraticBezierTo(size.width/4, size.height- 3*size.height/4, size.width, 0);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }
@override
   bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
     return false;
   }
 }

Widget Gradient(String title, double? height){
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
          title == "Bienvenido" ? Spacer() : const SizedBox(width: 0,),
          title == "Bienvenido" ? 
          const Icon(
            Icons.brightness_5,
            size: 15,
            color: Colors.white,) 
          : const SizedBox(width: 0,)
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