import 'package:flutter/material.dart';

class RateStars extends StatelessWidget {
  const RateStars({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.star,
          color: Color(0xffFFC41F),
          size: 20,
        ),
        Icon(
          Icons.star,
          color: Color(0xffFFC41F),
          size: 20,
        ),
        Icon(
          Icons.star,
          color: Color(0xffFFC41F),
          size: 20,
        ),
        Icon(
          Icons.star,
          color: Color(0xffFFC41F),
          size: 20,
        ),
        Icon(
          Icons.star,
          color: Color(0xffEDEDEF),
          size: 20,
        ),
      ],
    );
  }
}
