import 'package:bookly_app/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RatingBook extends StatelessWidget {
  final double rating;
  final int count;
  const RatingBook({super.key, required this.rating, required this.count});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
          size: 14,
        ),
        SizedBox(
          width: 8,
        ),
        Text(
          rating.toString(),
          style: Styles.textStyle16,
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          ("(${count.toString()})"),
          style: TextStyle(color: Color(0xff979797)),
        ),
      ],
    );
  }
}
