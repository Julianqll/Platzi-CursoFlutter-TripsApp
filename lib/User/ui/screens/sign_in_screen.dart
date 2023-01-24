import 'package:flutter/material.dart';
import 'package:platzi_trips_app/widgets/gradient.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {

  @override
  Widget build(BuildContext context) {
    return signInGoogleUI();
  }

  Widget signInGoogleUI() {
    return Scaffold(
      body: Stack(
        children:
        [
          GradientBack("", null),
          Column(
            children:
            const [
              Text("Welcome \n This is your Travel App",
                style: TextStyle(
                  fontSize: 37,
                  fontFamily: 'Lato',
                  color: Colors.white,
                  fontWeight: FontWeight.bold,)
              )
            ]
          )
        ]
      ),
    );
  }
}