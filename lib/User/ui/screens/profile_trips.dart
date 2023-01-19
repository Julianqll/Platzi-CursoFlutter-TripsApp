import 'package:flutter/material.dart';
import 'package:platzi_trips_app/Place/model/place.dart';
import 'package:platzi_trips_app/User/ui/widgets/card_profile.dart';
import 'package:platzi_trips_app/User/ui/widgets/icon_menu.dart';
import 'package:platzi_trips_app/User/ui/widgets/icon_profile.dart';
import 'package:platzi_trips_app/User/ui/widgets/long_header_appbar.dart';
import 'package:platzi_trips_app/User/ui/widgets/profile_info.dart';

class ProfileTrips extends StatelessWidget {
  const ProfileTrips({super.key});

  @override
  Widget build(BuildContext context) {

    Place first_place = Place(
      "https://th.bing.com/th/id/OIP.Z306oZ55iUC8qxo1tD2EhAHaE8?pid=ImgDet&rs=1", 
      "Knuckles Mountain Range",
      "Hiking, Waterfall hunting, Natural bath, Scenery & Photography",
      "123, 123, 123",);
    Place second_place = Place(
      "https://th.bing.com/th/id/OIP.wb_9Q1TLtJQTu6-OcYSqGAHaEK?pid=ImgDet&rs=1", 
      "Knuckles Mountain Range",
      "Hiking, Waterfall hunting, Natural bath, Scenery & Photography",
      "123, 123, 123",);

    return Stack(
      children: [
        const LongHeaderAppBar(),
          Padding(
            padding: const EdgeInsets.only(top: 260),
            child: ListView(
            children: [
              CardProfile(place: first_place),
              Padding(
                padding: EdgeInsets.only(bottom: 60.0),
                child: CardProfile(place: second_place),
              )
            ],
        ),
          ),
        Container(
          padding: const EdgeInsets.only(right: 50, left: 50),
          height: 300,
          child: const ProfileInfo(),
        ),
        Container(
          padding: const EdgeInsets.only(right: 30, left: 30, top: 200),
          height: 300,
          child: const IconMenu(),
        )
      ]
    );
  }
}