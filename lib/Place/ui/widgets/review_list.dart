import 'package:flutter/material.dart';
import 'package:platzi_trips_app/Place/ui/widgets/review.dart';

class ReviewList extends StatelessWidget {
  const ReviewList ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Review(
          'assets/images/socrates.jpeg',
          'Julian Quispe',
          '1 review - 5 photos',
          'Amazing place in Sri Lanka'),
        Review(
          'assets/images/socrates.jpeg',
          'Julian Quispe',
          '1 review - 5 photos',
          'Amazing place in Sri Lanka'),
        Review(
          'assets/images/socrates.jpeg',
          'Julian Quispe',
          '1 review - 5 photos',
          'Amazing place in Sri Lanka'),
      ],
    );
  }
}