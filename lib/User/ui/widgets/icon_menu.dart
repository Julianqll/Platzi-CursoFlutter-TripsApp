import 'package:flutter/material.dart';
import 'package:platzi_trips_app/User/ui/widgets/icon_profile.dart';

class IconMenu extends StatelessWidget {
  const IconMenu({super.key});

  @override
  Widget build(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: const [
      IconProfile(icono: Icons.bookmark_border_outlined, big: false, available: true),
      IconProfile(icono: Icons.paste_outlined, big: false, available: false),
      IconProfile(icono: Icons.add, big: true, available: true),
      IconProfile(icono: Icons.mail_outline_outlined, big: false, available: false),
      IconProfile(icono: Icons.person_rounded, big: false, available: false),
    ],
  );
  }
}