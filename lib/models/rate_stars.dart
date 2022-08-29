import 'package:flutter/material.dart';

class Star extends StatelessWidget {
  Star({
    super.key,
    required this.mynum,
    required this.rate,
  });
  final int mynum;
  final double rate;
  @override
  Widget build(BuildContext context) {
    return Icon(
      icon(num: mynum, rate: rate),
      color: iconColor(num: mynum, rate: rate),
      size: 18,
    );
  }
}

IconData icon({required int num, required double rate}) {
  if (rate >= num || rate <= num - 1) {
    return Icons.star;
  } else {
    return Icons.star_half_sharp;
  }
}

Color iconColor({required int num, required double rate}) {
  if (rate >= num - 0.5) {
    return Colors.amber;
  } else {
    return Colors.grey;
  }
}
