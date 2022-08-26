import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyButton extends StatelessWidget {
  double height;
  double width;
  String tex;
  var icon;
  Color bgColor;
  Color texColor;
  var myOnTap;
  MyButton({
    Key? key,
    this.myOnTap,
    this.icon,
    this.texColor = Colors.black,
    this.bgColor = Colors.white,
    required this.width,
    required this.height,
    required this.tex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: myOnTap,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(height / 4),
          color: bgColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon != null ? SvgPicture.asset(icon) : Container(),
            SizedBox(
              width: 16,
            ),
            Text(tex,style: TextStyle(color: texColor),),
          ],
        ),
      ),
    );
  }
}
