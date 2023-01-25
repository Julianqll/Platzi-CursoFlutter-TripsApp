import 'package:platzi_trips_app/User/model/user.dart';

class Place{
  String? id;
  String name;
  String description;
  String imageURL;
  int? likes;
  //User placeOwner;

  Place({
    required this.name,
    required this.description,
    required this.imageURL,
    this.likes,
    //required this.placeOwner
  });
}