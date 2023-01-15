import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget {
  const FloatingActionButtonGreen({super.key});
  @override
  State<FloatingActionButtonGreen> createState() => _FloatingActionButtonGreenState();
}


class _FloatingActionButtonGreenState extends State<FloatingActionButtonGreen> {
  late bool pressed = false;

  @override
  void initState() {
    pressed = false;
    super.initState();
  }

  void onPressedFav(){
    setState(() {
      pressed ? pressed = false : pressed = true;
    });
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          pressed ? "Añadiste a tus favoritos" : "Quitaste de tus favoritos"),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: const Color(0xFF11DA53),
      mini: true,
      tooltip: "Fav",
      child: Icon(pressed ? Icons.favorite :Icons.favorite_border),
      onPressed: onPressedFav,
    );
  }
}