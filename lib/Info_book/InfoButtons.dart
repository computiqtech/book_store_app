import 'package:flutter/material.dart';

class InfoButton extends StatelessWidget {
  const InfoButton({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  final IconData icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 154,
      height: 40,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white),
      child: Align(
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 24,
              color: Colors.black,
            ),
            const SizedBox(
              width: 8,
            ),
            Text(
              text,
              style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            )
          ],
        ),
      ),
    );
  }
}
/*
*/