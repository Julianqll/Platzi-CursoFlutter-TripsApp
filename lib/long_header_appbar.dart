import 'package:flutter/material.dart';
import 'package:platzi_trips_app/gradient.dart';

class LongHeaderAppBar extends StatelessWidget {
  const LongHeaderAppBar({super.key});

  @override
  Widget build(BuildContext context) {
        return Stack(
      children: [
        GradientBack("Perfil",400),
      ClipPath(
        clipper: TsClip2(),
        child: Container(
          color: Colors.white.withOpacity(0.05),
          height: 400,
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