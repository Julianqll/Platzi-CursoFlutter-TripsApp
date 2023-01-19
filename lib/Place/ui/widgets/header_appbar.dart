import 'package:flutter/material.dart';
import 'package:platzi_trips_app/Place/ui/widgets/card_image_list.dart';
import 'package:platzi_trips_app/widgets/gradient.dart';

class HeaderAppBar extends StatelessWidget {
  const HeaderAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GradientBack("Bienvenido",250),
        const CardImageList(), //El stack toma en cuenta el orden de los elementos
      ],
    );
  }
}