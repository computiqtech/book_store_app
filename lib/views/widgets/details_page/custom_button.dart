import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../style.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key, required this.icon, required this.text})
      : super(key: key);

  final String text, icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 154,
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: const [
          BoxShadow(
            color: shadowColor,
            offset: Offset(0, 8),
            blurRadius: 24,
            spreadRadius: 12,
          ),
        ],
      ),
      child: Material(
        color: white,
        borderRadius: BorderRadius.circular(8),
        child: InkWell(
          onTap: (){},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(icon),
              const SizedBox(width: 8),
              Text(text, style: titleTextStyle),
            ],
          ),
        ),
      ),
    );
  }
}
