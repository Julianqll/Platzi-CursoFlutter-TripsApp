import 'package:flutter/material.dart';

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({super.key});

  @override
  Widget build(BuildContext context) {
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
}