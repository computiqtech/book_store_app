
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
      const EdgeInsets.symmetric(horizontal: 0, vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset("assets/images/Rectangle 14.png"),
          SizedBox(
            width: 4,
          ),
          Text(
            "Hi, Ali!",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Spacer(),
          SvgPicture.asset("assets/icons/three-dots-vertical.svg")
        ],
      ),
    );
  }
}