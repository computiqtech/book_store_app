import 'package:flutter/material.dart';

import '../../style.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    Key? key,
    required this.text,
    required this.padding,
    required this.onPressed,
  }) : super(key: key);

  final String text;
  final int padding;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: padding.toDouble()),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          minimumSize: MaterialStateProperty.all(const Size(double.infinity, 60)),
          backgroundColor: MaterialStateProperty.all(black),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
        ),
        child: Text(text, style: buyButtonTextStyle),
      ),
    );
  }
}
