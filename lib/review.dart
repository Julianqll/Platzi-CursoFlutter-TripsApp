import 'package:flutter/material.dart';

class Review extends StatelessWidget{
  
  String pathImage = 'assets/images/socrates.jpeg';
  String name = 'Julian Quispe';
  String details = '1 review - 5 photos';
  String comment = 'Amazing place in Sri Lanka';

  Review(this.pathImage, this.name, this.details, this.comment, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    final photo = Container(
      margin: const EdgeInsets.only(
        top:20,
        left:20,
      ),
      width:80,
      height:80,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(pathImage)),
      )
    );

    final userName = Container(
      margin: const EdgeInsets.only(
        left:20,
      ),
      child:Text(
        name,
        textAlign: TextAlign.left,
        style: const TextStyle(
          fontSize: 17,
          fontFamily: 'Lato'
        ))
    );

    final userInfo = Container(
      margin: const EdgeInsets.only(
        left:20,
      ),
      child:Text(
        details,
        textAlign: TextAlign.left,
        style: const TextStyle(
          fontSize: 13,
          fontFamily: 'Lato',
          color: Color(0xFFa3a5a7)
        ))
    );

    final userComment = Container(
      margin: const EdgeInsets.only(
        left:20,
      ),
      child:Text(
        comment,
        textAlign: TextAlign.left,
        style: const TextStyle(
          fontSize: 13,
          fontFamily: 'Lato',
          fontWeight: FontWeight.w900,
          color: Color(0xFFa3a5a7)
        ))
    );

    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        userName,
        userInfo,
        userComment
      ]
    );
    return Row(
      children: [
        photo,
        userDetails
      ],
    );
  }
}