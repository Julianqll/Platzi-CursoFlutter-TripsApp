import 'package:flutter/material.dart';

class IconProfile extends StatelessWidget {
  final IconData icono;
  final bool big;
  final bool available;
  const IconProfile({super.key, required this.icono, required this.big, required this.available});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: available ? () => {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text("Botón presionado"),
          ),
        )
      } : null,
      child: Container(
        width: big ? 60 :40,
        height: big ? 60: 40,
        decoration: BoxDecoration(
          color: available ? Colors.white : Colors.grey.shade500,
          shape: BoxShape.circle,
        ),
      child: Icon(
        icono,
        color: Colors.indigo,
        size: big ? 40 : 20,
    )
      )
  ,);
  }
}