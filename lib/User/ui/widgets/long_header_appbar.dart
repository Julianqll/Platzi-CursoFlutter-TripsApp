import 'package:flutter/material.dart';
import 'package:platzi_trips_app/widgets/gradient.dart';

class LongHeaderAppBar extends StatelessWidget {
  const LongHeaderAppBar({super.key});

  @override
  Widget build(BuildContext context) {
      return Stack(
        children: [
          GradientBack("Perfil",400),
        ],
    );
  }
  
}