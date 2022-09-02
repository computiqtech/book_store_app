import 'package:flutter/material.dart';

class BookPhoto extends StatelessWidget {
  const BookPhoto({Key? key, required this.image}) : super(key: key);

  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 91.76, right: 81.66, bottom: 22),
      alignment: Alignment.center,
      height: 310,
      width: 201.58,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(8),
          bottomRight: Radius.circular(8),
        ),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(image),
        ),
        boxShadow: const [
          BoxShadow(
              color: Color(0xffC7C7C7), blurRadius: 2, offset: Offset(0, 2)),
          BoxShadow(
              color: Color(0xffDEDEDE), blurRadius: 24, offset: Offset(0, 8)),
        ],
      ),
    );
  }
}
