import 'package:flutter/material.dart';

class RateStars extends StatelessWidget {
  const RateStars({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
        children: List<Widget>.generate(4, (int index) {
      return Icon(Icons.star_rounded, color: Color(0xffFFC41F), size: 20);
    }));
  }
}
