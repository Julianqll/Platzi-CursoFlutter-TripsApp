import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:platzi_trips_app/User/bloc/bloc_user.dart';

import '../../model/user.dart';

class ProfileInfo extends StatelessWidget {
  late UserBloc userBloc;
  ProfileInfo({super.key});

  @override
  Widget build(BuildContext context) {
  
  userBloc = BlocProvider.of(context);

  return StreamBuilder(
    stream: userBloc.streamFirebase,
    builder: (BuildContext context, AsyncSnapshot snapshot){
      switch(snapshot.connectionState){
        case ConnectionState.waiting:
          return const CircularProgressIndicator();
        case ConnectionState.none:
          return const CircularProgressIndicator();
        case ConnectionState.active:
          return showProfileInfo(snapshot);
        case ConnectionState.done:
          return showProfileInfo(snapshot);
      }
    });
  }
}

Widget showProfileInfo(AsyncSnapshot snapshot){
    if (!snapshot.hasData || snapshot.hasError){
      print("No logueado");
      return Column(
          children: const [
            CircularProgressIndicator(),
            Text("No se pudo cargar la informacion. Haz login")
          ],
    );
    }
    else{
      print("Logueado");
      User user = User(
        uid: snapshot.data.uid,
        name: snapshot.data.displayName, 
        email: snapshot.data.email, 
        photoURL: snapshot.data.photoURL
      );
      return Row(
          children: [
            Container(
                  margin: const EdgeInsets.only(
                    right: 10,
                  ),
                  width:85,
                  height:85,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 2),
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(user.photoURL)),
                  )
                ),
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 25),
                      child: Text(user.name,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                      ),
                      ),
                    ), 
                      Padding(
                      padding: const EdgeInsets.only(top:25),
                      child: Text(user.email,
                      style: TextStyle(
                        color: Colors.grey.shade400
                      ),),
                    )
                    ],
                )
          ],
    );

    }
  }