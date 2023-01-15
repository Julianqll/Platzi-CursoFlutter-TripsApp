import 'package:flutter/material.dart';
import 'package:platzi_trips_app/card_profile.dart';
import 'package:platzi_trips_app/icon_profile.dart';
import 'package:platzi_trips_app/long_header_appbar.dart';

class ProfileTrips extends StatelessWidget {
  const ProfileTrips({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const LongHeaderAppBar(),
          Padding(
            padding: const EdgeInsets.only(top: 260),
            child: ListView(
            children: const [
              CardProfile(
                image: "https://th.bing.com/th/id/OIP.Z306oZ55iUC8qxo1tD2EhAHaE8?pid=ImgDet&rs=1", 
                name: "Knuckles Mountain Range",
                description: "Hiking, Waterfall hunting, Natural bath, Scenery & Photography",
                steps: "123, 123, 123",
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 60.0),
                child: CardProfile(
                  image: "https://th.bing.com/th/id/OIP.wb_9Q1TLtJQTu6-OcYSqGAHaEK?pid=ImgDet&rs=1", 
                  name: "Knuckles Mountain Range",
                  description: "Hiking, Waterfall hunting, Natural bath, Scenery & Photography",
                  steps: "123, 123, 123",
                ),
              )
            ],
        ),
          ),
        Container(
          padding: const EdgeInsets.only(right: 50, left: 50),
          height: 300,
          child: ProfileInfo(),
        ),
        Container(
          padding: const EdgeInsets.only(right: 30, left: 30, top: 200),
          height: 300,
          child: IconsMenu(),
        )
      ]
    );
  }
}

Widget ProfileInfo(){
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
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage("https://i.pinimg.com/736x/66/23/02/662302d2dcfc2c34405dea1e429f0c74.jpg")),
                  )
                ),
                Stack(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(bottom: 25),
                      child: Text("Pathum Tzoo",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                      ),
                      ),
                    ), 
                      Padding(
                      padding: const EdgeInsets.only(top:25),
                      child: Text("pathumtzoo1@gmail.com",
                      style: TextStyle(
                        color: Colors.grey.shade400
                      ),),
                    )
                    ],
                )
          ],
      );
}

Widget IconsMenu(){
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