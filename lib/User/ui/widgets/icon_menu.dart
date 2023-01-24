import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:platzi_trips_app/User/bloc/bloc_user.dart';
import 'package:platzi_trips_app/User/ui/widgets/icon_profile.dart';

class IconMenu extends StatelessWidget {
  IconMenu({super.key});

  late UserBloc userBloc;
  @override
  Widget build(BuildContext context) {

  userBloc = BlocProvider.of(context);

  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      //TODO:Cambiar contra
      IconProfile(icono: Icons.vpn_key, big: false, available: false, onTapped: null,),

      //TODO: Añadir nuevo lugar
      IconProfile(icono: Icons.add, big: false, available: false, onTapped: null,),

      //TODO: Cerrar Sesion
      IconProfile(icono: Icons.exit_to_app, big: true, available: true, onTapped: ()=>{
        userBloc.signOut()
      },),
    ],
  );
  }
}